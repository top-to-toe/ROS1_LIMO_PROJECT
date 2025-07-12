#!/usr/bin/env python3
import rospy
import socketio
import json
import base64

from geometry_msgs.msg import PoseWithCovarianceStamped
from nav_msgs.msg import Odometry, Path
from sensor_msgs.msg import CompressedImage, LaserScan, BatteryState

# SocketIO client to connect to FastAPI server
sio = socketio.Client()
sio.connect("http://localhost:8000")  # FastAPI server address

def pose_cb(msg):
    pose = msg.pose.pose
    data = {
        "x": pose.position.x,
        "y": pose.position.y,
        "theta": 0  # Orientation simplified
    }
    sio.emit("pose", data)

def odom_cb(msg):
    data = {
        "linear": msg.twist.twist.linear.x,
        "angular": msg.twist.twist.angular.z
    }
    sio.emit("velocity", data)

def battery_cb(msg):
    sio.emit("battery", {"percentage": msg.percentage})

def image_cb(msg):
    img_data = base64.b64encode(msg.data).decode('utf-8')
    sio.emit("camera", {"image": img_data})

def path_cb(msg):
    poses = [{"x": p.pose.position.x, "y": p.pose.position.y} for p in msg.poses]
    sio.emit("path", {"points": poses})

def lidar_cb(msg):
    sio.emit("scan", {"ranges": list(msg.ranges)})

if __name__ == '__main__':
    rospy.init_node("bridge_node")

    rospy.Subscriber("/amcl_pose", PoseWithCovarianceStamped, pose_cb)
    rospy.Subscriber("/odom", Odometry, odom_cb)
    rospy.Subscriber("/battery_state", BatteryState, battery_cb)
    rospy.Subscriber("/camera/image/compressed", CompressedImage, image_cb)
    rospy.Subscriber("/move_base/GlobalPlanner/plan", Path, path_cb)
    rospy.Subscriber("/scan", LaserScan, lidar_cb)

    rospy.spin()
