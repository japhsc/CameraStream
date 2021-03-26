import select
import cv2

		
class webcam():
	def __init__(self, 	resolution=(320, 240),
						video_format='bgr',
						framerate=32):

		self.camera = cv2.VideoCapture(0)
		print(self.camera.isOpened())
		
		width = self.camera.get(cv2.CAP_PROP_FRAME_WIDTH)   # float `width`
		height = self.camera.get(cv2.CAP_PROP_FRAME_HEIGHT)  # float `height`
		_, frame = self.camera.read()

		# self.size = (int(width), int(height), 3)
		self.size = frame.shape
		
	def raw(self):
		_, frame = self.camera.read()
		return frame.tobytes()

	def size(self):

		
	def close(self):
		self.camera.release()
		
	def __del__(self):
		self.close()
		
	def flip(self, hflip, vflip):
		pass
		
	def info(self):
		pass


'''
import io
import picamera


image_effect	= [	'none', 'negative', 'solarize', 'sketch', \
					'denoise', 'emboss', 'oilpaint', 'hatch', \
					'gpen', 'pastel', 'watercolor', 'film', \
					'blur', 'saturation', 'colorswap', 'washedout', \
					'posterise', 'colorpoint', 'colorbalance', \
					'cartoon', 'deinterlace1', 'deinterlace2' ]
drc_strength	= [	'off', 'low', 'medium', 'high']
exposure_mode 	= [	'off', 'auto', 'night', 'nightpreview', \
					'backlight', 'spotlight', 'sports', \
					'snow', 'beach', 'verylong', 'fixedfps', \
					'antishake', 'fireworks']
flash_mode		= [	'off', 'auto', 'on', 'redeye', 'fillin', 'torch']


class CamOutput(io.BytesIO):
	def __init__(self):
		io.BytesIO.__init__(self)
		self.data = None

	def close(self):
		super().close()
		self.data = None
		
	def truncate(self):
		super().truncate()
		super().seek(0)

	def flush(self):
		super().flush()
		self.data = self.getvalue()


class VideoStream(CamOutput):
	def __init__(self, 	resolution=(320, 240), \
						video_format='bgr', \
						framerate=32, \
						led_pin=None):
		CamOutput.__init__(self)
		self.camera = picamera.PiCamera(led_pin=led_pin)
		self.stream = self.camera.capture_continuous(\
						self, \
						format=video_format, \
						use_video_port=True)
		self.camera.resolution = resolution
		self.camera.framerate = framerate
		#self.camera.image_effect = image_effect[14]

		self.size = self.camera.resolution
						
	def raw(self):
		next(self.stream)
		frame = self.data
		self.truncate()
		#if process(self): return b''
		return frame

	def close(self):
		self.stream.close()
		self.camera.close()
		
	def __del__(self):
		super().close()
		self.close()

	def capture(self):
		return bytes_to_rgb(self.raw(), self.size)
		
	def flip(self, hflip, vflip):
		self.camera.hflip = hflip
		self.camera.vflip = vflip

	def info(self):
		print('image_effect\t\t', 		self.camera.image_effect)
		print('image_denoise\t\t', 		self.camera.image_denoise)
		print('hflip\t\t\t', 			self.camera.hflip)
		print('vflip\t\t\t', 			self.camera.vflip)
		print('iso\t\t\t', 				self.camera.iso)
		print('brightness\t\t', 		self.camera.brightness)
		print('clock_mode\t\t', 		self.camera.clock_mode)
		print('contrast\t\t', 			self.camera.contrast)
		print('digital_gain\t\t', 		self.camera.digital_gain)
		print('drc_strength\t\t', 		self.camera.drc_strength)
		print('exposure_mode\t\t', 		self.camera.exposure_mode)
		print('exposure_speed\t\t', 	self.camera.exposure_speed)
		print('flash_mode\t\t', 		self.camera.flash_mode)
		print('framerate\t\t', 			self.camera.framerate)
		print('meter_mode\t\t', 		self.camera.meter_mode)
		print('overlays\t\t', 			self.camera.overlays)
		print('resolution\t\t', 		self.camera.resolution)
		print('revision\t\t', 			self.camera.revision)
		print('rotation\t\t', 			self.camera.rotation)
		print('saturation\t\t', 		self.camera.saturation)
		print('sensor_mode\t\t', 		self.camera.sensor_mode)
		print('sharpness\t\t', 			self.camera.sharpness)
		print('shutter_speed\t\t', 		self.camera.shutter_speed)
		print('timestamp\t\t', 			self.camera.timestamp)
		print('video_denoise\t\t', 		self.camera.video_denoise)
		print('video_stabilization\t', 	self.camera.video_stabilization)
		print('zoom\t\t\t', 			self.camera.zoom)
'''
