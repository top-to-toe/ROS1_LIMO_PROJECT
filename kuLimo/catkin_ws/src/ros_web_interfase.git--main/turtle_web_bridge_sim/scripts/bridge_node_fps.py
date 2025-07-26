#!/usr/bin/env python3
import rospy
import socketio
import json
import base64
import time

from geometry_msgs.msg import PoseWithCovarianceStamped
from nav_msgs.msg import Odometry, Path
from sensor_msgs.msg import CompressedImage, LaserScan, BatteryState
from geometry_msgs.msg import Twist

# SocketIO client to connect to FastAPI server (on notebook)
sio = socketio.Client()
connected = False

try:
    sio.connect("http://localhost:8000")  # ← 실제 노트북 IP로 수정하세요
    connected = True
    print("[INFO] SocketIO 서버에 연결되었습니다.")
except Exception as e:
    print(f"[WARNING] SocketIO 서버 연결 실패: {e}")
    print("[INFO] ROS 노드는 계속 실행되지만 웹 전송은 비활성화됩니다.")
    connected = False

# Rate limiting timestamps
last_camera_sent = 0
last_pose_sent = 0
last_scan_sent = 0

# 최신 데이터 저장용 변수
latest_pose_msg = None
latest_odom_msg = None
latest_battery_msg = None
latest_image_msg = None
latest_path_msg = None
latest_lidar_msg = None

# 콜백에서 최신 데이터만 저장

def pose_cb(msg):
    global latest_pose_msg
    latest_pose_msg = msg

def odom_cb(msg):
    global latest_odom_msg
    latest_odom_msg = msg

def battery_cb(msg):
    global latest_battery_msg
    latest_battery_msg = msg

def image_cb(msg):
    global latest_image_msg
    latest_image_msg = msg

def path_cb(msg):
    global latest_path_msg
    latest_path_msg = msg

def lidar_cb(msg):
    global latest_lidar_msg
    latest_lidar_msg = msg

# 타이머 이벤트에서 주기적으로 emit

def pose_timer_event(event):
    if latest_pose_msg and connected:
        pose = latest_pose_msg.pose.pose
        data = {
            "x": pose.position.x,
            "y": pose.position.y,
            "theta": 0
        }
        print(f"[DEBUG] pose emit: {data}")
        sio.emit("pose", data)

def odom_timer_event(event):
    if latest_odom_msg and connected:
        data = {
            "linear": latest_odom_msg.twist.twist.linear.x,
            "angular": latest_odom_msg.twist.twist.angular.z
        }
        sio.emit("velocity", data)

def battery_timer_event(event):
    if latest_battery_msg and connected:
        # percentage가 없으면 직접 계산
        if hasattr(latest_battery_msg, 'percentage') and latest_battery_msg.percentage is not None:
            percent = latest_battery_msg.percentage
        elif hasattr(latest_battery_msg, 'charge') and hasattr(latest_battery_msg, 'capacity') and latest_battery_msg.capacity:
            try:
                percent = (latest_battery_msg.charge / latest_battery_msg.capacity) * 100
            except Exception:
                percent = None
        else:
            percent = None
        data = {
            "percentage": percent,
            "voltage": getattr(latest_battery_msg, 'voltage', None)
        }
        print(f"[DEBUG] battery emit: {data}")
        sio.emit("battery", data)

def image_timer_event(event):
    if latest_image_msg and connected:
        try:
            img_data = base64.b64encode(latest_image_msg.data).decode('utf-8')
            print(f"[DEBUG] Camera image base64 length: {len(img_data)}")
            sio.emit("camera", {"image": img_data})
        except Exception as e:
            print(f"[ERROR] Camera image encode/send failed: {e}")

def path_timer_event(event):
    if latest_path_msg and connected:
        poses = [{"x": p.pose.position.x, "y": p.pose.position.y} for p in latest_path_msg.poses]
        sio.emit("path", {"points": poses})

def lidar_timer_event(event):
    if latest_lidar_msg and connected:
        sio.emit("scan", {
            "ranges": list(latest_lidar_msg.ranges),
            "angle_min": latest_lidar_msg.angle_min,
            "angle_increment": latest_lidar_msg.angle_increment
        })

# ROS 노드 초기화 및 구독 설정
if __name__ == '__main__':
    rospy.init_node("bridge_node")

    # cmd_vel 퍼블리셔 생성
    cmd_vel_pub = rospy.Publisher("/cmd_vel", Twist, queue_size=1)

    # SocketIO에서 cmd 명령 수신 핸들러 등록
    @sio.on("cmd")
    def on_cmd(data):
        print(f"[DEBUG] cmd received: {data}")
        direction = data.get("direction")
        twist = Twist()
        speed = 0.7
        angular = 2.0
        if direction == "forward":
            twist.linear.x = speed
        elif direction == "backward":
            twist.linear.x = -speed
        elif direction == "left":
            twist.angular.z = angular
        elif direction == "right":
            twist.angular.z = -angular
        elif direction == "stop":
            twist.linear.x = 0
            twist.angular.z = 0
        else:
            print(f"[WARN] Unknown direction: {direction}")
            return
        cmd_vel_pub.publish(twist)

    rospy.Subscriber("/amcl_pose", PoseWithCovarianceStamped, pose_cb)
    rospy.Subscriber("/limo/odom", Odometry, odom_cb)
    rospy.Subscriber("/limo/battery_state", BatteryState, battery_cb)
    rospy.Subscriber("/limo/color/image_raw/compressed", CompressedImage, image_cb)
    rospy.Subscriber("/move_base/GlobalPlanner/plan", Path, path_cb)
    rospy.Subscriber("/limo/scan", LaserScan, lidar_cb)

    # 타이머: 각 센서별로 주기 설정 (Hz)
    rospy.Timer(rospy.Duration(0.2), pose_timer_event)      # 5Hz
    rospy.Timer(rospy.Duration(0.1), image_timer_event)     # 10Hz
    rospy.Timer(rospy.Duration(0.2), lidar_timer_event)     # 5Hz
    rospy.Timer(rospy.Duration(0.5), battery_timer_event)   # 2Hz
    rospy.Timer(rospy.Duration(0.1), odom_timer_event)      # 10Hz
    rospy.Timer(rospy.Duration(0.5), path_timer_event)      # 2Hz

    rospy.spin()
