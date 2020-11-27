import time
import sys

from viewer import viewer
from utils import bytes_to_rgb
from stream import stream_client, unpack

host = 'localhost'
port = 5556
if len(sys.argv)>1:
	host = sys.argv[1]
if len(sys.argv)>2:
	port = sys.argv[2]

client = stream_client(host=host, port=port)
view = viewer()

i,t1,t = 0,0,0
t0 = time.time()

print('Stream from: ', client.addr)
while True:
	msg = client.receive()
	if msg:
		data = unpack(msg)
		frame = bytes_to_rgb(data['data'], data['size'])
		
		view.show(frame)
		
		i += 1
		t1 = time.time()
		t += t1-t0
		t0 = t1
		print('fps', int((i+1)/t), end='\r', flush=True)
