#! /usr/bin/env python3

import rospy
from sensor_msgs.msg import CompressedImage
import cv2
from cv_bridge import CvBridge
import numpy as np
from std_msgs.msg import Int32

class DetectLine:
    def __init__(self):
        self.br = CvBridge()
        self.pub = rospy.Publisher('error', Int32, queue_size=10)
        self.sub = rospy.Subscriber('/camera/rgb/image_raw/compressed', 
                                    CompressedImage, 
                                    self.imageCallback)
        
        self.yellow_lane_low = np.array([0, 90, 100])
        self.yellow_lane_high = np.array([60, 220, 255])
    
    def imageCallback(self, msg):
        cv_image = self.br.compressed_imgmsg_to_cv2(msg)
        cropped_image = self.cropImage(cv_image)
        maksed_image = self.colorDetect(cropped_image)

        cx = 0
        cy = 0
        x_ref = 170
        error = Int32()
        error.data = 0
        
        try:
            M = cv2.moments(maksed_image)
            cx = int(M['m10']/M['m00'])
            cy = int(M['m01']/M['m00'])
        except:
            cx = -1
            cy = -1
        
        if cx != -1:
            debug_image = cv2.circle(cv_image, (cx, cy+400), 10, (255, 0, 0), -1)
            error.data = x_ref - cx
        else:
            debug_image = cv_image
            error.data = 0

        debug_image = cv2.line(debug_image, (x_ref, 0), (x_ref, 480), (0, 255, 0), 5)
        self.pub.publish(error)
        
        #cv2.imshow('original_image', cv_image)
        #cv2.imshow('cropped_image', cropped_image)
        #cv2.imshow('masked_image', maksed_image)
        cv2.imshow('debug_image', debug_image)
        cv2.waitKey(3)
    
    def cropImage(self, img):
        return img[400:480, 0:320]

    def colorDetect(self, img):
        hls = cv2.cvtColor(img, cv2.COLOR_BGR2HLS)
        mask = cv2.inRange(hls, self.yellow_lane_low, self.yellow_lane_high)
        return mask

def main():
    rospy.init_node('detect_line')
    dl = DetectLine()
    rospy.spin()

if __name__ == '__main__':
    main()
    
