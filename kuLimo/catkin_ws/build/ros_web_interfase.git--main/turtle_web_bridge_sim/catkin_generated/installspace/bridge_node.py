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


# --- 최신 상태 저장용 전역 변수 ---
latest_pose = None
latest_theta = None
latest_velocity = None
latest_battery = None
latest_image = None
latest_path = None
latest_scan = None

# --- 콜백 함수 정의 (최신 데이터만 저장) ---
def pose_cb(msg):
    global latest_pose, latest_theta
    pose = msg.pose.pose
    quaternion = (
        pose.orientation.x,
        pose.orientation.y,
        pose.orientation.z,
        pose.orientation.w
    )
    euler = euler_from_quaternion(quaternion)
    latest_theta = euler[2]
    latest_pose = pose

def odom_cb(msg):
    global latest_velocity
    latest_velocity = {
        "linear": msg.twist.twist.linear.x,
        "angular": msg.twist.twist.angular.z
    }

def battery_cb(msg):
    global latest_battery
    latest_battery = msg.percentage
    print(f"[Bridge Node] Battery level: {latest_battery}%")

def image_cb(msg):
    global latest_image
    latest_image = base64.b64encode(msg.data).decode('utf-8')
    print("[Bridge Node] Image data received.")

def path_cb(msg):
    global latest_path
    latest_path = [{"x": p.pose.position.x, "y": p.pose.position.y} for p in msg.poses]

def lidar_cb(msg):
    global latest_scan
    latest_scan = list(msg.ranges)

if __name__ == '__main__':
    try:
        rospy.init_node("bridge_node")

        rospy.loginfo("[Bridge Node] Connecting to SocketIO server...")
        sio.connect("http://localhost:8000")
        rospy.loginfo("[Bridge Node] SocketIO server connected.")

        # --- 토픽 (Subscriber) 설정 ---
        rospy.Subscriber("/amcl_pose", PoseWithCovarianceStamped, pose_cb)
        rospy.Subscriber("/odom", Odometry, odom_cb)
        rospy.Subscriber("/battery_state", BatteryState, battery_cb)
        rospy.Subscriber("/camera/image/compressed", CompressedImage, image_cb)
        rospy.Subscriber("/move_base/GlobalPlanner/plan", Path, path_cb)
        rospy.Subscriber("/limo/scan", LaserScan, lidar_cb)

        rospy.loginfo("[Bridge Node] Bridge node started. Listening to topics...")

        rate = rospy.Rate(10)  # 10Hz로 상태 전송
        while not rospy.is_shutdown():
            # 최신 데이터가 있을 때만 emit
            try:
                if latest_pose is not None and latest_theta is not None:
                    sio.emit("pose", {
                        "x": latest_pose.position.x,
                        "y": latest_pose.position.y,
                        "theta": latest_theta
                    })
                if latest_velocity is not None:
                    sio.emit("velocity", latest_velocity)
                if latest_battery is not None:
                    sio.emit("battery", {"percentage": latest_battery})
                if latest_image is not None:
                    sio.emit("camera", {"image": latest_image})
                if latest_path is not None:
                    sio.emit("path", {"points": latest_path})
                if latest_scan is not None:
                    sio.emit("scan", {"ranges": latest_scan})
            except Exception as e:
                rospy.logerr(f"[Bridge Node] Failed to emit data: {e}")
            rate.sleep()

    except rospy.ROSInterruptException:
        rospy.loginfo("[Bridge Node] Shutting down.")
    except socketio.exceptions.ConnectionError as e:
        rospy.logerr(f"[Bridge Node] Could not connect to SocketIO server: {e}")
    finally:
        if sio.connected:
            sio.disconnect()
            rospy.loginfo("[Bridge Node] SocketIO disconnected.")
