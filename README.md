# Smart Guardian: 자율주행 로봇 Limo 기반 스마트 관제 시스템

> 자율주행 로봇 `wego Limo`와 ROS1 (Noetic), Python, YOLOv4, FastAPI 등을 활용한 스마트 시티 기반 실시간 순찰 및 관제 시스템입니다.
> 프로젝트 발표 자료본 (https://github.com/top-to-toe/ROS1_LIMO_PROJECT/blob/main/Smart%20Guardian_%20%EC%9E%90%EC%9C%A8%EC%A3%BC%ED%96%89%20%EB%A1%9C%EB%B4%87%20Limo%20%ED%99%9C%EC%9A%A9%20%EA%B8%B0%EB%B0%98%20%EC%8A%A4%EB%A7%88%ED%8A%B8%20%EA%B4%80%EC%A0%9C%20%EC%8B%9C%EC%8A%A4%ED%85%9C_%EB%B0%9C%ED%91%9C%20%EC%B5%9C%EC%A2%85%EB%B3%B8.pdf)
> (https://docs.google.com/presentation/d/17cGrGaiJ5c-mRxx9dpXn4djH_mYeKLga38XjvzCEVSg/edit?pli=1&slide=id.g36eb4455bfd_0_72#slide=id.g36eb4455bfd_0_72)
---

## 📌 프로젝트 개요

- **프로젝트명**: Smart Guardian
- **목표**: SLAM 기반 자율 순찰, 화재 감지, 객체 인식 및 웹 기반 실시간 관제 시스템 구현
- **플랫폼**: wego Limo, Ubuntu 20.04, ROS1 (Noetic)

---

## 🧠 시스템 아키텍처

## [로봇(Limo) ROS 노드] <-- ros-bridge --> [FastAPI 웹서버] <---> [웹 대시보드]
- **SLAM**: 실시간 위치 추정 및 지도 생성
- **FSM 순찰 노드**: 유한 상태 기계 기반 자율 순찰
- **YOLOv4 객체 인식**: 사람/차량 감지 및 기록
- **화재 감지**: OpenCV HSV 기반 화염 감지
- **웹 인터페이스**: 원격 제어 및 실시간 모니터링

---

## 🧩 주요 노드 구성

| 노드명 | 기능 요약 | 구현자 |
|--------|-----------|--------|
| `patrol_limo_fsm` | FSM 기반 자율 순찰 로직 | 팀장 이한솔 |
| `fireDetector_limo` | HSV 기반 화재 감지 | 맹진수 |
| `traffic_monitor` | YOLOv4 객체 탐지 및 데이터 기록 | 맹진수 |
| `ros_web_interface` | FastAPI 기반 웹 API 서버 | 정용태 |

---

## ⚙️ FSM 기반 순찰 시스템

- **상태 분류**:
  - PATROLLING
  - AVOIDING (장애물 회피)
  - RECOVERY (정체 복구)
  - GOAL_REACHED

- **핵심 함수**: `_update_fsm`, `_execute_patrolling`, `_execute_avoiding`, `_execute_recovery`
- **파라미터 조정**: `patrol_fsm_params.yaml`에서 YAML 기반 설정

---

## 🔥 화재 감지

- **기술**: OpenCV + HSV 색상 필터링
- **알고리즘**:
  - BGR → HSV 변환
  - 빨간색 계열 마스킹
  - 윤곽선 기반 객체 판단

```python
lower_red = np.array([0, 100, 100])
upper_red = np.array([10, 255, 255])
mask = cv2.inRange(hsv, lower_red, upper_red)
```
---

## 🎯 YOLOv4 객체 인식 및 데이터 분석
- YOLOv4: 실시간 다중 객체 인식
- CSV 기록: 객체 유형, 시간, 위치 등 저장
- 분석 활용: 유동 인구 패턴, 특정 시간대 혼잡도 분석

---

## 🌐 웹 대시보드
- 기능:
  - 로봇 실시간 위치/상태 확인
  - 영상 스트리밍 및 객체 정보 표시
  - 원격 제어 기능 제공
- 기술: FastAPI, ros-bridge, HTML/CSS/JS

---

## 📁 프로젝트 디렉토리 구조
```
ROS1_LIMO_PROJECT/
├── hello_ros/
│   ├── launch/
│   │   └── fsm_robot_patrol.launch
│   ├── config/
│   │   └── patrol_fsm_params.yaml
│   ├── scripts/
│   │   ├── patrol_limo.py
│   │   └── patrol_limo_fsm.py
│   └── ...
├── ros_web_interface/
│   ├── ...
└── ...
```
---

## 🙌 팀원 역할
| 이름 |    역할   |
|------|------------------------------------|
|이한솔|프로젝트 총괄, FSM 순찰 노드 구현|
|정용태|웹 대시보드 및 FastAPI 서버 개발|
|맹진수|YOLOv4 객체 인식, 데이터 시각화|
|최용규|AruCo 마커 기능 구상 및 발전 방향 제안|

---

## 🚀 향후 발전 방향
- AruCo 마커 기반 위치 인식
- FSM 상태 추가 및 확장
- YOLO 객체 분류 정밀도 향상
- 로봇 다중 연계 관제 시스템 구성
