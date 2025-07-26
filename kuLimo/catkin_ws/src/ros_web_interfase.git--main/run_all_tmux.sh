#!/bin/bash
# run_all_panes.sh
# 한 터미널 창에서 여러 pane으로 LIMO 전체 환경 실행

SESSION="limo_pane"

tmux new-session -d -s $SESSION

# 1. roscore (좌상단)
tmux send-keys -t $SESSION "roscore" C-m

# 2. gazebo (우상단)
tmux split-window -h -t $SESSION
tmux send-keys -t $SESSION:0.1 "roslaunch limo_gazebo_sim limo_worlds.launch" C-m

# 3. navigation (좌중단)
tmux split-window -v -t $SESSION:0.0
tmux send-keys -t $SESSION:0.2 "roslaunch limo_bringup limo_navigation_diff_simul.launch" C-m

# 4. web_video_server (우중단)
tmux split-window -v -t $SESSION:0.1
tmux send-keys -t $SESSION:0.3 "rosrun web_video_server web_video_server" C-m

# 5. FastAPI (좌하단)
tmux split-window -v -t $SESSION:0.2
tmux send-keys -t $SESSION:0.4 "cd ~/catkin_ws/src/web_interface/web_server && source ~/.bashrc && source ../../../../devel/setup.bash && . .venv/bin/activate && uvicorn app.main:app --host 0.0.0.0 --port 8000" C-m

# 6. bridge.launch (우하단)
tmux split-window -v -t $SESSION:0.3
tmux send-keys -t $SESSION:0.5 "roslaunch turtle_web_bridge_sim bridge.launch" C-m

# 보기 좋게 첫 pane으로 이동
tmux select-pane -t $SESSION:0.0

# tmux 세션에 attach
tmux attach -t $SESSION