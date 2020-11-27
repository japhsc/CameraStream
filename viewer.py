import cv2

class viewer(object):
	def __init__(self, title='Frame'):
		self.title = title
		
	def __del__(self):
		cv2.destroyAllWindows()
			
	def show(self, frame):
		cv2.imshow(self.title, frame)
		key = cv2.waitKey(1) & 0xFF

'''
import cv2
while True:
	frame = vs.capture()
	cv2.imshow("Frame", frame)
	key = cv2.waitKey(1) & 0xFF
	
cv2.destroyAllWindows()
'''
