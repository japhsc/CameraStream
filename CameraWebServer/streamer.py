import sys
import time
import urllib.request
from typing import List, Optional
import numpy as np
import cv2

base_url = "http://192.168.178.121"
url = f"{base_url}:81/stream"

ident = "framesize"
value = 8   # XGA(1024x768)
config_url = f"{base_url}/control?var={ident}&val={value}"
resp = urllib.request.urlopen(config_url)

cap = cv2.VideoCapture(url)

window_name = "window"
cv2.namedWindow(window_name, cv2.WND_PROP_FULLSCREEN)
cv2.setWindowProperty(window_name, cv2.WND_PROP_FULLSCREEN, cv2.WINDOW_FULLSCREEN)

font = cv2.FONT_HERSHEY_SIMPLEX
fontScale, color, thickness = 1, (255, 255, 255), 1

t0 = time.time()
dt = np.inf

fps_list: List[Optional[float]] = [np.nan]*25
i: int = 0
while True:
    ret, frame = cap.read()
    if ret:
        height, width, depth = frame.shape
        fps = 1./dt
        fps_list[i] = fps
        i = (i + 1) % 25
        fps_avg = round(np.nanmean(fps_list), 1)

        cv2.putText(frame, f"fps {fps_avg}", (10, height-10), font, fontScale, color, thickness, cv2.LINE_AA)
        cv2.imshow(window_name, frame)
        ts = time.time()
        dt = ts-t0
        t0 = ts

    if ord('q') == cv2.waitKey(10):
        sys.exit(0)



cap.release()
