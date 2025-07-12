#! /usr/bin/env python3
import rospy
from geometry_msgs.msg import Twist

class TurtleControl:
    def __init__(self):
        self.pub_ = rospy.Publisher('turtle1/cmd_vel', Twist, queue_size=10)
        
        self.msg = Twist()
        self.msg.linear.x = 1.0
        self.msg.angular.z = 1.0

    def publishData(self):
        self.pub_.publish(self.msg)


def main():
    rospy.init_node('turtle_control')
    tc = TurtleControl()

    rate_ = rospy.Rate(10)

    while not rospy.is_shutdown():
        tc.publishData()
        rate_.sleep()



if __name__ == '__main__':
    main()

