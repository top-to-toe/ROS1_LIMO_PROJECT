#!/bin/bash
# 웹서버 런처에서 ROS 카메라 RTSP/HLS 스트리밍 자동 실행 스크립트

# 1. 가상 비디오 디바이스 생성
sudo modprobe v4l2loopback devices=1 video_nr=10 card_label="ros_cam"

# 2. ROS 이미지 토픽을 가상 디바이스로 publish (백그라운드)
rosrun image_view video_writer image:=/camera/image_raw _filename:=/dev/video10 &

# 3. RTSP 서버 실행 (백그라운드)
v4l2rtspserver -W 640 -H 480 -F 15 -E H264 /dev/video10 &

# 4. ffmpeg로 RTSP → HLS 변환 (백그라운드)
sudo mkdir -p /var/www/html
sudo chmod 777 /var/www/html
ffmpeg -i rtsp://localhost:8554/ros -c:v copy -f hls -hls_time 2 -hls_list_size 3 -hls_flags delete_segments /var/www/html/stream.m3u8 &

# 5. 안내 메시지
sleep 2
echo "[INFO] ROS 카메라 RTSP/HLS 스트리밍 파이프라인이 실행 중입니다."
echo "웹에서 http://<서버IP>:<포트>/static/stream.m3u8 로 접속하세요." 