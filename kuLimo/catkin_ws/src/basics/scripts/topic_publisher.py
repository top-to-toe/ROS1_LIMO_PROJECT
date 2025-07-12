#! /usr/bin/env python3
import rospy
from std_msgs.msg import Int16

rospy.init_node('talker')

pub_ = rospy.Publisher('counter', Int16, queue_size=10)

rate_ = rospy.Rate(2)
msg_ = Int16()
msg_.data=0

while not rospy.is_shutdown():
    pub_.publish(msg_)
    msg_.data += 1
    rate_.sleep()
