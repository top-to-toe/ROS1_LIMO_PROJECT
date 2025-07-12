#! /usr/bin/env python3

import rospy
from sensor_msgs.msg import Imu
from geometry_msgs.msg import Twist
import math

class TurnAbsolute:
    def __init__(self):
        self.sub = rospy.Subscriber('imu', Imu, self.imuCallback)
        self.pub = rospy.Publisher('cmd_vel', Twist, queue_size=10)

        self.goal = 999.99
        self.current = 0.0

    def imuCallback(self, msg):
        (roll, pitch, yaw) = self.eulerFromQuaternion(msg.orientation.x,
                                                      msg.orientation.y,
                                                      msg.orientation.z,
                                                      msg.orientation.w)
        
        self.current = yaw
    
    def eulerFromQuaternion(self, x, y, z, w):
        t0 = +2.0 * (w * x + y * z)
        t1 = +1.0 - 2.0 * (x * x + y * y)
        roll_x = math.atan2(t0, t1)
     
        t2 = +2.0 * (w * y - z * x)
        t2 = +1.0 if t2 > +1.0 else t2
        t2 = -1.0 if t2 < -1.0 else t2
        pitch_y = math.asin(t2)
     
        t3 = +2.0 * (w * z + x * y)
        t4 = +1.0 - 2.0 * (y * y + z * z)
        yaw_z = math.atan2(t3, t4)
    
        return roll_x, pitch_y, yaw_z

    def setGoal(self, angle):
        self.goal = angle
    
    def move(self):
        cmd = Twist()
        gap = self.goal - self.current
        gap = self.normalAngle(gap)
        
        if gap >= 0:
            cmd.angular.z = 0.3
        else:
            cmd.angular.z = -0.3
        
        if abs(gap) < 0.05:
            cmd.angular.z =0.0
            print('goal reached!')
        
        self.pub.publish(cmd)
    
    def normalAngle(self, angle):
        while angle >= math.pi:
            angle -= 2*math.pi
        while angle <= -math.pi:
            angle += 2*math.pi
        return angle

def main():
    rospy.init_node('turn_abolute')
    ta = TurnAbsolute()
    print('Please Enter object orientation(-3.14 ~ 3.14): ')
    goal = float(input())
    ta.setGoal(goal)
    rate = rospy.Rate(10)
    while not rospy.is_shutdown():
        ta.move()
        rate.sleep()

if __name__ == '__main__':
    main()
    