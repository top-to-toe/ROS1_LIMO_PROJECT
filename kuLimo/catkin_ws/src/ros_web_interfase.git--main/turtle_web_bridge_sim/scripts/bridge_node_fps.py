#!/usr/bin/env python3
import rospy
import socketio
import json
import base64
import time

from geometry_msgs.msg import PoseWithCovarianceStamped
from nav_msgs.msg import Odometry, Path
from sensor_msgs.msg import CompressedImage, LaserScan, BatteryState

# SocketIO client to connect to FastAPI server (on notebook)
sio = socketio.Client()
sio.connect("http://<NOTEBOOK_IP>:8000")  # ← 실제 노트북 IP로 수정하세요

# Rate limiting timestamps
last_camera_sent = 0
last_pose_sent = 0
last_scan_sent = 0

# Pose (위치) 콜백 – 5fps 제한
def pose_cb(msg):
    global last_pose_sent
    now = time.time()
    if now - last_pose_sent < 0.2:  # 5 Hz
        return
    last_pose_sent = now

    pose = msg.pose.pose
    data = {
        "x": pose.position.x,
        "y": pose.position.y,
        "theta": 0  # Orientation 생략 또는 추후 추가
    }
    sio.emit("pose", data)

# Odom (속도) 콜백 – 제한 없음
def odom_cb(msg):
    data = {
        "linear": msg.twist.twist.linear.x,
        "angular": msg.twist.twist.angular.z
    }
    sio.emit("velocity", data)

# 배터리 콜백 – 즉시 송신
def battery_cb(msg):
    sio.emit("battery", {"percentage": msg.percentage})

# 카메라 이미지 콜백 – 10fps 제한
def image_cb(msg):
    global last_camera_sent
    now = time.time()
    if now - last_camera_sent < 0.1:  # 10 Hz
        return
    last_camera_sent = now

    img_data = base64.b64encode(msg.data).decode('utf-8')
    sio.emit("camera", {"image": img_data})

# 경로 콜백 – 전부 전송
def path_cb(msg):
    poses = [{"x": p.pose.position.x, "y": p.pose.position.y} for p in msg.poses]
    sio.emit("path", {"points": poses})

# 라이다 콜백 – 5fps 제한
def lidar_cb(msg):
    global last_scan_sent
    now = time.time()
    if now - last_scan_sent < 0.2:  # 5 Hz
        return
    last_scan_sent = now
    sio.emit("scan", {"ranges": list(msg.ranges)})

# ROS 노드 초기화 및 구독 설정
if __name__ == '__main__':
    rospy.init_node("bridge_node")

    rospy.Subscriber("/amcl_pose", PoseWithCovarianceStamped, pose_cb)
    rospy.Subscriber("/odom", Odometry, odom_cb)
    rospy.Subscriber("/battery_state", BatteryState, battery_cb)
    rospy.Subscriber("/camera/image/compressed", CompressedImage, image_cb)
    rospy.Subscriber("/move_base/GlobalPlanner/plan", Path, path_cb)
    rospy.Subscriber("/scan", LaserScan, lidar_cb)

    rospy.spin()
