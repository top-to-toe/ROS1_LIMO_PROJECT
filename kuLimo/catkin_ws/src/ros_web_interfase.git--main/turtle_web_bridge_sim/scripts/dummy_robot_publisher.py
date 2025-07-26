#!/usr/bin/env python3
import rospy
import socketio
import base64

# ROS의 표준 변환 라이브러리. 쿼터니언을 오일러 각도로 변환하는 데 사용합니다.
from tf.transformations import euler_from_quaternion

from geometry_msgs.msg import PoseWithCovarianceStamped
from nav_msgs.msg import Odometry, Path
from sensor_msgs.msg import CompressedImage, LaserScan, BatteryState

# SocketIO 클라이언트 인스턴스 생성
sio = socketio.Client()

# --- 콜백 함수 정의 ---

def pose_cb(msg):
    pose = msg.pose.pose
    
    # [개선] 쿼터니언(Quaternion)을 Yaw 각도로 변환하여 정확한 로봇 방향(theta) 계산
    quaternion = (
        pose.orientation.x,
        pose.orientation.y,
        pose.orientation.z,
        pose.orientation.w
    )
    euler = euler_from_quaternion(quaternion)
    theta = euler[2] # Yaw 각도

    data = {
        "x": pose.position.x,
        "y": pose.position.y,
        "theta": theta
    }
    
    # [개선] emit 실패 시 노드가 죽지 않도록 예외 처리 추가
    try:
        sio.emit("pose", data)
    except Exception as e:
        rospy.logerr(f"[Bridge Node] Failed to emit pose data: {e}")

def odom_cb(msg):
    data = {
        "linear": msg.twist.twist.linear.x,
        "angular": msg.twist.twist.angular.z
    }
    try:
        sio.emit("velocity", data)
    except Exception as e:
        rospy.logerr(f"[Bridge Node] Failed to emit velocity data: {e}")

def battery_cb(msg):
    try:
        sio.emit("battery", {"percentage": msg.percentage})
    except Exception as e:
        rospy.logerr(f"[Bridge Node] Failed to emit battery data: {e}")

def image_cb(msg):
    try:
        img_data = base64.b64encode(msg.data).decode('utf-8')
        sio.emit("camera", {"image": img_data})
    except Exception as e:
        rospy.logerr(f"[Bridge Node] Failed to emit camera image: {e}")

def path_cb(msg):
    try:
        poses = [{"x": p.pose.position.x, "y": p.pose.position.y} for p in msg.poses]
        sio.emit("path", {"points": poses})
    except Exception as e:
        rospy.logerr(f"[Bridge Node] Failed to emit path data: {e}")

def lidar_cb(msg):
    try:
        sio.emit("scan", {"ranges": list(msg.ranges)})
    except Exception as e:
        rospy.logerr(f"[Bridge Node] Failed to emit lidar scan data: {e}")

if __name__ == '__main__':
    try:
        rospy.init_node("bridge_node")

        # [개선] ROS 노드 초기화 후 서버 연결 시도 및 예외 처리
        rospy.loginfo("[Bridge Node] Connecting to SocketIO server...")
        sio.connect("http://localhost:8000")
        rospy.loginfo("[Bridge Node] SocketIO server connected.")

        # --- 토픽 구독자(Subscriber) 설정 ---
        rospy.Subscriber("/amcl_pose", PoseWithCovarianceStamped, pose_cb)
        rospy.Subscriber("/odom", Odometry, odom_cb)
        rospy.Subscriber("/battery_state", BatteryState, battery_cb)
        rospy.Subscriber("/camera/image/compressed", CompressedImage, image_cb)
        rospy.Subscriber("/move_base/GlobalPlanner/plan", Path, path_cb)
        rospy.Subscriber("/scan", LaserScan, lidar_cb)

        rospy.loginfo("[Bridge Node] Bridge node started. Listening to topics...")
        rospy.spin()

    except rospy.ROSInterruptException:
        rospy.loginfo("[Bridge Node] Shutting down.")
    except socketio.exceptions.ConnectionError as e:
        rospy.logerr(f"[Bridge Node] Could not connect to SocketIO server: {e}")
    finally:
        if sio.connected:
            sio.disconnect()
            rospy.loginfo("[Bridge Node] SocketIO disconnected.")
