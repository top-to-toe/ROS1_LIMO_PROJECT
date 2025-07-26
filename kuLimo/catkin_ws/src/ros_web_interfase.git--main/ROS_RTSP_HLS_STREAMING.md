# ROS LIMO 카메라 웹 실시간 스트리밍 가이드 (시뮬레이션/실로봇 환경별)

이 문서는 **시뮬레이션(Gazebo)**, **실제 LIMO(로봇)** 환경에서 **LIMO의 카메라** 토픽을 웹에서 실시간으로 시청하는 가장 빠른 방법(web_video_server 활용)과 웹서버 연동법을 안내합니다.

---

## 1. 시뮬레이션 환경에서 LIMO 카메라 실시간 스트리밍

### 1-1. 시뮬레이션 환경 준비 및 실행
```bash
roscore
roslaunch limo_gazebo_sim limo_worlds.launch
roslaunch limo_bringup limo_navigation_diff_simul.launch
roslaunch limo_bringup limo_teletop_keyboard_simul.launch
```
- 위 명령어로 Gazebo 시뮬, 네비게이션, 키보드 조작 등 기본 세팅

### 1-2. LIMO 카메라 토픽 확인
```bash
rostopic list | grep limo
rostopic echo /limo/color/image_raw
```
- 실제 발행 중인 LIMO 카메라 토픽명 확인 (예: `/limo/color/image_raw`)

### 1-3. web_video_server 설치 및 실행
```bash
sudo apt-get install ros-noetic-web-video-server
rosrun web_video_server web_video_server
```
- 8080 포트에서 HTTP 스트림 제공

### 1-4. 웹서버(FastAPI 등) 실행 (선택)
```bash
uvicorn app.main:app --host 0.0.0.0 --port 8000
```
- static/index.html 등 제공

### 1-5. ROS-웹 브릿지(예: turtle_web_bridge_sim) 실행 (선택)
```bash
roslaunch turtle_web_bridge_sim bridge.launch
```

### 1-6. 웹에서 LIMO 카메라 스트림 노출 (HTML 예시)
```html
<video width="640" height="480" controls autoplay muted>
  <source src="http://<ROS_PC_IP>:8080/stream?topic=/limo/color/image_raw&type=h264" type="video/mp4">
  브라우저가 비디오 태그를 지원하지 않습니다.
</video>
```
- `<ROS_PC_IP>`는 ROS가 실행 중인 PC의 실제 IP로 변경
- 실제 토픽명(`/limo/color/image_raw`)으로 변경

---

## 2. 실제 LIMO(실로봇) 환경에서 LIMO 카메라 실시간 스트리밍

### 2-1. 실로봇 환경 준비 및 실행
```bash
roscore
roslaunch limo_bringup limo_navigation_diff_simul.launch
```
- 네비게이션 등 런치

### 2-2. LIMO 카메라 토픽 확인
```bash
rostopic list | grep limo
rostopic echo /limo/color/image_raw
```
- 실제 발행 중인 LIMO 카메라 토픽명 확인 (예: `/limo/color/image_raw`)

### 2-3. web_video_server 설치 및 실행
```bash
sudo apt-get install ros-noetic-web-video-server
rosrun web_video_server web_video_server
```

### 2-4. 웹서버(FastAPI 등) 실행 (선택)
```bash
uvicorn app.main:app --host 0.0.0.0 --port 8000
```

### 2-5. ROS-웹 브릿지(예: turtle_web_bridge_sim) 실행 (선택)
```bash
roslaunch turtle_web_bridge_sim bridge.launch
```

### 2-6. 웹에서 LIMO 카메라 스트림 노출 (HTML 예시)
```html
<video width="640" height="480" controls autoplay muted>
  <source src="http://<ROS_PC_IP>:8080/stream?topic=/limo/color/image_raw&type=h264" type="video/mp4">
  브라우저가 비디오 태그를 지원하지 않습니다.
</video>
```
- `<ROS_PC_IP>`는 ROS가 실행 중인 PC의 실제 IP로 변경
- 실제 토픽명(`/limo/color/image_raw`)으로 변경

---

## 3. 웹서버 위치 및 설정
- 위 `index.html` 파일을 웹서버(nginx, apache, FastAPI, Flask 등)의 static 폴더에 위치
- 예시: `/var/www/html/index.html` 또는 FastAPI의 `static/index.html`
- 웹서버가 80/8080 포트에서 서비스 중이라면, 외부에서 `http://<서버IP>/index.html`로 접속
- **web_video_server는 ROS PC에서 실행, 웹서버는 같은 PC 또는 별도 서버에서 실행 가능**

---

## 4. 방화벽/포트 개방
- ROS PC의 8080 포트(web_video_server), 웹서버 포트(80/8080 등) 모두 개방 필요
```bash
sudo ufw allow 8080
sudo ufw allow 80
```

---

## 5. 트러블슈팅 및 참고
- **토픽이 목록에 안 뜨면:** LIMO 카메라 노드가 정상적으로 실행 중인지, 토픽명이 맞는지 확인
- **영상이 안 나오면:**
  - 방화벽/포트 개방 여부 확인
  - `<ROS_PC_IP>`가 올바른지, 네트워크 연결 확인
  - 브라우저 콘솔에 에러 메시지 확인
- **H.264가 안 나오면:** 브라우저가 H.264 지원하는지 확인(대부분 크롬/엣지/파이어폭스는 지원)
- **실제 토픽명은 환경에 따라 다르니 반드시 rostopic list/echo로 확인**

---

**이 가이드대로 따라하면, 시뮬레이션/실로봇 환경 모두에서 LIMO 카메라 실시간 웹 스트리밍을 가장 빠르고 쉽게 구축할 수 있습니다!** 