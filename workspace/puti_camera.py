import cv2

cap = cv2.VideoCapture(0)
cap.set(cv2.CAP_PROP_FRAME_WIDTH,1280)
cap.set(cv2.CAP_PROP_FRAME_HEIGHT,720)
def get_img():
    ret,frame = cap.read()
    print(ret)
    cv2.imwrite("image.jpg",frame)
    cap.release
