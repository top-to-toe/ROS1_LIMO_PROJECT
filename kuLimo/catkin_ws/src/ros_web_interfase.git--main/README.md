

# LIMO 웹 인터페이스 최종 실행 가이드 (MD 형식)

이 문서는 LIMO 로봇과 웹 인터페이스를 연동하기 위한 전체 설정 및 실행 과정을 담고 있습니다. 아래 단계를 순서대로 따라오시면 됩니다.

## 1. ⚙️ 최초 설정 (한 번만 진행)

프로젝트를 처음 구성하거나 코드를 변경한 경우에만 이 단계를 진행합니다.

### 1-1. 필수 코드 수정

과거에 발생했던 오류들을 방지하기 위해 2개의 파이썬 파일을 수정합니다.

**📝 `app/main.py` 파일 수정 (`RuntimeError` 방지)**

* **이유**: 웹 서버 실행 위치 기준으로 정적 파일(`static`) 폴더 경로를 올바르게 지정하기 위함입니다.
* **명령**: `gedit ~/catkin_ws/src/web_interface/web_server/app/main.py`
* **내용 수정**:

```python
# 수정 전
# app.mount("/static", StaticFiles(directory="web_server/static"), name="static")

# 수정 후
app.mount("/static", StaticFiles(directory="static"), name="static")
```


**📝 `scripts/bridge_node.py` 파일 수정 (`Connection refused` 방지)**

* **이유**: ROS 브리지 노드가 웹 서버와 동일한 포트(8000번)로 접속하도록 지정하기 위함입니다.
* **명령**: `gedit ~/catkin_ws/src/web_interface/turtle_web_bridge_sim/scripts/bridge_node.py`
* **내용 수정**:

```python
# 수정 전 (포트가 5000 또는 다른 번호일 경우)
# sio.connect("http://localhost:5000")

# 수정 후
sio.connect("http://localhost:8000")
```


### 1-2. Python 종속성 설치

`AttributeError`를 방지하기 위해 `socketio` 관련 패키지를 정리하고 필요한 라이브러리를 설치합니다.

```bash
# 충돌 가능성이 있는 패키지들을 모두 삭제합니다.
pip3 uninstall socketio python-socketio socketIO-client -y

# 필수 패키지들을 설치합니다.
pip3 install "python-socketio[client]" fastapi uvicorn
```


### 1-3. ROS 패키지 빌드

수정한 코드를 ROS 시스템에 최종 반영합니다.

```bash
cd ~/catkin_ws
catkin_make
```


## 2. ▶️ 프로젝트 실행 (매번 진행)

✅ **핵심**: 아래 컴포넌트들은 **반드시 명시된 순서대로** 실행해야 합니다.

### [노트북 💻 - 터미널 1] 🚀 FastAPI 웹 서버 실행 (가장 먼저!)

1. 웹 서버 디렉토리로 이동합니다.

```bash
cd ~/catkin_ws/src/web_interface/web_server
```

2. `uvicorn`을 사용해 웹 서버를 **8000번 포트**로 실행합니다.

```bash
uvicorn app.main:app --host 0.0.0.0 --port 8000
```

3. `INFO: Application startup complete.` 메시지를 확인 후, **이 터미널을 계속 실행 상태로 둡니다.**

### [노트북 💻 - 터미널 2] 🌉 ROS 브리지 노드 실행

1. **새 터미널**을 엽니다.
2. ROS 환경 설정을 적용합니다.

```bash
source ~/catkin_ws/devel/setup.bash
```

3. 런치 파일을 실행합니다. (`RLException` 방지를 위해 정확한 패키지 이름을 사용합니다.)

```bash
roslaunch turtle_web_bridge_sim bridge.launch
```

4. 첫 번째 터미널(웹 서버) 로그에 `Client connected` 메시지가 나타나는지 확인합니다.

### [LIMO 로봇 🤖 - 터미널] LIMO 드라이버 실행

1. SSH를 통해 LIMO 로봇에 접속합니다.
2. ROS 환경 설정과 네트워크 설정을 적용합니다.

```bash
source ~/catkin_ws/devel/setup.bash
source ~/catkin_ws/src/web_interface/config/ros_multi_machine.env
```

3. LIMO의 핵심 노드를 실행합니다.

```bash
roslaunch web_interface turtle_web_bridge_limo/launch/minimal_limo.launch
```


## 3. 🌐 최종 확인

모든 과정이 성공적으로 실행되었다면, PC나 모바일의 웹 브라우저에서 아래 주소로 접속합니다.

```
http://<노트북_IP>:8000
```

웹 페이지에서 LIMO 로봇의 실시간 정보를 확인할 수 있습니다.

