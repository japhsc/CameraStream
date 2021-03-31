import sys
from datetime import datetime

import requests
import urllib
import cv2
import numpy as np

'''
ffmpeg -i http://192.168.178.46:81/stream Downloads/stream.mpg

http://192.168.178.121:81/stream
'''

ident = "framesize"
value = 8
base_url = "http://192.168.178.121"
url = f"{base_url}:81/stream"
timed_url = f"{base_url}/capture?_cb={datetime.now().microsecond}"
config_url = f"{base_url}/control?var={ident}&val={value}"

resp = urllib.request.urlopen(config_url)

window_name = "window"
cv2.namedWindow(window_name, cv2.WND_PROP_FULLSCREEN)
cv2.setWindowProperty(window_name, cv2.WND_PROP_FULLSCREEN, cv2.WINDOW_FULLSCREEN)

while True:
    # resp = urllib.request.urlopen(url)
    resp = urllib.request.urlopen(timed_url)

    img = np.array(bytearray(resp.read()), dtype=np.uint8)
    img_dec = cv2.imdecode(img, -1)
    if img_dec is not None:
        # all the opencv processing is done here
        cv2.imshow(window_name, img_dec)
        if ord('q') == cv2.waitKey(10):
            sys.exit(0)

cv2.destroyWindow(window_name)
# cv2.destroyAllWindows()
