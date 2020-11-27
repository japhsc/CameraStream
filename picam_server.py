import time
from stream import stream_server, stream_stack, grayscale, unity
from cam import VideoStream

#framerate = 32
framerate = 46
#resolution = (640, 480)
#resolution = (1920, 1080)
resolution = (320, 240)
video_format = 'bgr'

vs = VideoStream(	resolution=resolution, \
					video_format=video_format, \
					framerate=framerate)

vs.flip(False, True)
vs.info()

server = stream_server()
#stack = stream_stack(server, process=grayscale)
#stack = stream_stack(server, process=unity)
stack = stream_stack(server)

print('Start cam stream')

i,t1,t = 0,0,0
t0 = time.time()
while True:
	stack.append(data=vs.raw(), size=vs.size)
	
	i += 1
	t1 = time.time()
	t += t1-t0
	t0 = t1
	print('fps', int((i+1)/t), 'queue', len(stack), end='\r', flush=True)

