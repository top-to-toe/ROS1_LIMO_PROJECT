#! /usr/bin/env python3

import rospy
from std_msgs.msg import Int32, Bool
from geometry_msgs.msg import Twist

class LimoControl:
    def __init__(self):
        self.error_sub = rospy.Subscriber('error', Int32, self.errorCallback)
        self.stop_sub = rospy.Subscriber('e_stop', Bool, self.stopCallback)
        self.cmd_pub = rospy.Publisher('cmd_vel', Twist, queue_size=10)

        self.stop_flag = False
    
    def stopCallback(self, msg):
        self.stop_flag = msg.data

    def errorCallback(self, msg):
        cmd = Twist()

        cmd.linear.x = 0.3
        cmd.angular.z = 0.01 * msg.data

        if self.stop_flag:
            cmd.linear.x = 0.0
            cmd.angular.z = 0.0

        self.cmd_pub.publish(cmd)

def main():
    rospy.init_node('limo_control')
    lc = LimoControl()
    rospy.spin()

if __name__ =='__main__':
    main()