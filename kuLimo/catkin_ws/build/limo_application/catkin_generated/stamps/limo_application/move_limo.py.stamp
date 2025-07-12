#! /usr/bin/env python3

import rospy
from geometry_msgs.msg import Twist

class MoveLimo:
    def __init__(self):
        self.pub_ = rospy.Publisher('cmd_vel', Twist, queue_size=10)
        self.rate = rospy.Rate(10)
        self.cmd = Twist()

    def moveForward(self):
        for i in range(30):
            self.cmd.linear.x = 1.0
            self.cmd.angular.z = 0.0
            self.pub_.publish(self.cmd)
            self.rate.sleep()

    def moveBackward(self):
        for i in range(30):
            self.cmd.linear.x = -1.0
            self.cmd.angular.z = 0.0
            self.pub_.publish(self.cmd)
            self.rate.sleep()

    def turnLeft(self):
        for i in range(30):
            self.cmd.linear.x = 0.0
            self.cmd.angular.z = -1.0
            self.pub_.publish(self.cmd)
            self.rate.sleep()

    def turnRight(self):
        for i in range(30):
            self.cmd.linear.x = 0.0
            self.cmd.angular.z = 1.0
            self.pub_.publish(self.cmd)
            self.rate.sleep()
    
    def stop(self):
        for i in range(30):
            self.cmd.linear.x = 0.0
            self.cmd.angular.z = 0.0
            self.pub_.publish(self.cmd)
            self.rate.sleep()

def main():
    rospy.init_node('move_limo')
    ml = MoveLimo()

    ml.moveForward()
    ml.moveBackward()
    ml.turnLeft()
    ml.turnRight()
    ml.stop()

if __name__ == '__main__':
    main()