#! /usr/bin/env python3
import rospy
from std_msgs.msg import Int16


num=0

def fibonacci(msg):
    global num
    num += msg.data
    print(num)

rospy.init_node('listner')
sub_ = rospy.Subscriber('counter',
                        Int16,
                        fibonacci)


rospy.spin()


