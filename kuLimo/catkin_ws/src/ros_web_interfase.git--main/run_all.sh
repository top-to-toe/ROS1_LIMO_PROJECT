#!/bin/bash
# run_all.sh

# 1. 이전 Gazebo 프로세스 종료 (killgazebo)
gnome-terminal -- bash -c "source ~/.bashrc; killgazebo; exec bash"

sleep 2  # 완전히 종료될 때까지 잠시 대기

# 2. roscore 실행
gnome-terminal -- bash -c "source ~/.bashrc; roscore; exec bash"

sleep 2

# 3. gazebo 시뮬레이션
gnome-terminal -- bash -c "source ~/.bashrc; roslaunch limo_gazebo_sim limo_worlds.launch; exec bash"

sleep 2

# 4. navigation
gnome-terminal -- bash -c "source ~/.bashrc; roslaunch limo_bringup limo_navigation_diff.launch; exec bash"

# 5. web_video_server
gnome-terminal -- bash -c "source ~/.bashrc; rosrun web_video_server web_video_server; exec bash"

# 6. FastAPI(uvicorn)
gnome-terminal -- bash -c "cd ~/catkin_ws/src/web_interface/web_server && source ~/.bashrc && source .venv/bin/activate && uvicorn app.main:app --host 0.0.0.0 --port 8000; exec bash"

# 7. bridge.launch
gnome-terminal -- bash -c "source ~/.bashrc; roslaunch turtle_web_bridge_sim bridge.launch; exec bash"