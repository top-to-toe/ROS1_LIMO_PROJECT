#! /usr/bin/env python3

import rospy
from sensor_msgs.msg import LaserScan
from std_msgs.msg import Bool
import math

class EStop:
    def __init__(self):
        self.sub = rospy.Subscriber('scan', LaserScan, self.laserCallback)
        self.pub = rospy.Publisher('e_stop', Bool, queue_size = 10)
    
    def laserCallback(self, msg):
        e_stop_flag = Bool()
        e_stop_flag.data = False

        for index, data in enumerate(msg.ranges):
            theta = msg.angle_min + msg.angle_increment * index
            cx = data * math.cos(theta)
            cy = data * math.sin(theta)
            if 0.01 < cx < 0.2 and -0.1 < cy < 0.1:
                e_stop_flag.data = True
                break
            
        self.pub.publish(e_stop_flag)

def main():
    rospy.init_node('e_stop')
    es = EStop()
    rospy.spin()

if __name__ == '__main__':
    main()
