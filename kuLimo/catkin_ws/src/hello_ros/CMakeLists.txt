# sudo apt update
# sudo apt install git

cmake_minimum_required(VERSION 3.0.2)
project(hello_ros)
find_package(catkin REQUIRED COMPONENTS
  dynamic_reconfigure
  geometry_msgs
  roscpp
  rospy
  std_msgs
  message_generation
  actionlib
  actionlib_msgs
)

catkin_python_setup()

generate_dynamic_reconfigure_options(
  cfg/SimpleParameter.cfg
  cfg/Turtle.cfg
)

add_message_files(
  FILES
)

add_service_files(
  FILES
)

add_action_files(
  FILES
)

generate_messages(
  DEPENDENCIES
  std_msgs
  actionlib_msgs
)


catkin_package()

catkin_install_python(PROGRAMS
  scripts/patrol_limo
  scripts/patrol_limo_fsm
  scripts/patrol_line_limo
  scripts/fireDetector_limo
  scripts/traffic_monitor
  DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)

install(DIRECTORY
  launch
  param
  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
)

include_directories(
  ${catkin_INCLUDE_DIRS}
)