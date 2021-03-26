import zmq
import time
from threading import Thread
from collections import deque

import msgpack


def pack(data_dict):
	return msgpack.packb(data_dict, use_bin_type=True)


def unpack(data_byte):
	return msgpack.unpackb(data_byte, raw=False)


class stream_server(object):
	def __init__(self, host='*', port=5556, recv_timeout=0, send_timeout=0):
		self.addr = "tcp://%s:%i" % (host, port)

		self.ctx = zmq.Context()
		self.socket = self.ctx.socket(zmq.PUB)

		if recv_timeout>0:
			self.socket.setsockopt(zmq.RCVTIMEO, recv_timeout)
		if send_timeout>0:
			self.socket.setsockopt(zmq.SNDTIMEO, send_timeout)
		
		self.socket.bind(self.addr)

	def __del__(self):
		self.socket.close()
		
	def send(self, data):
		self.socket.send(data)


class stream_client(object):
	def __init__(self, 	host='localhost', port=5556, \
						recv_timeout=0, send_timeout=0):
		self.addr = "tcp://%s:%i" % (host, port)

		self.ctx = zmq.Context()
		self.socket = self.ctx.socket(zmq.SUB)

		if recv_timeout>0:
			self.socket.setsockopt(zmq.RCVTIMEO, recv_timeout)
		if send_timeout>0:
			self.socket.setsockopt(zmq.SNDTIMEO, send_timeout)
		
		self.socket.linger = 0
		self.socket.setsockopt(zmq.SUBSCRIBE, b'')
		self.socket.connect(self.addr)

	def __del__(self):
		self.socket.close()

	def receive(self):
		try:
			return self.socket.recv(zmq.DONTWAIT)
		except zmq.ZMQError as e:
			if e.errno == zmq.EAGAIN:
				return b'' 	# nothing received
			else:
				raise
		else:
			#break		# break message
			return b''


import numpy as np
from utils import bytes_to_rgb, bgr_weights


def unity(data):
	data['type'] = 'bgr'
	return pack(data)


def grayscale(data):
	data['data'] = np.uint8(np.dot(bytes_to_rgb(data['data'], data['size']), bgr_weights))
	data['size'] = data['data'].shape
	data['data'] = data['data'].tobytes()
	data['type'] = 'grayscale'
	
	return pack(data)


class stream_stack(object):
	def __init__(self, server:stream_server, deque_len=5, process=None):
		self.server = server
		self.stack = deque(maxlen=deque_len)
		
		self.process = process
		if self.process is None:
			self.process = unity
			
		self.th = Thread(target=self.update, args=())
		self.th.start()
		
	def __del__(self):
		self.running = False
		self.th.join()
		
	def __len__(self):
		return len(self.stack)
		
	def append(self, **kwargs):
		self.stack.appendleft(kwargs)
		
	def update(self):
		self.running = True
		while self.running:
			if len(self.stack)>0:
				self.server.send(self.process(self.stack.pop()))
			else:
				time.sleep(1/20)

