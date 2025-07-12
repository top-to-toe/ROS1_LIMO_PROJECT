# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "hello_ros: 8 messages, 1 services")

set(MSG_I_FLAGS "-Ihello_ros:/home/sejongtp07/kuLimo/catkin_ws/src/hello_ros/msg;-Ihello_ros:/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/noetic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(hello_ros_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/sejongtp07/kuLimo/catkin_ws/src/hello_ros/msg/MyTopic.msg" NAME_WE)
add_custom_target(_hello_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hello_ros" "/home/sejongtp07/kuLimo/catkin_ws/src/hello_ros/msg/MyTopic.msg" ""
)

get_filename_component(_filename "/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitAction.msg" NAME_WE)
add_custom_target(_hello_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hello_ros" "/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitAction.msg" "actionlib_msgs/GoalID:hello_ros/TimeWaitGoal:hello_ros/TimeWaitActionFeedback:actionlib_msgs/GoalStatus:hello_ros/TimeWaitResult:hello_ros/TimeWaitActionResult:hello_ros/TimeWaitActionGoal:std_msgs/Header:hello_ros/TimeWaitFeedback"
)

get_filename_component(_filename "/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitActionGoal.msg" NAME_WE)
add_custom_target(_hello_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hello_ros" "/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitActionGoal.msg" "actionlib_msgs/GoalID:std_msgs/Header:hello_ros/TimeWaitGoal"
)

get_filename_component(_filename "/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitActionResult.msg" NAME_WE)
add_custom_target(_hello_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hello_ros" "/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitActionResult.msg" "actionlib_msgs/GoalID:hello_ros/TimeWaitResult:actionlib_msgs/GoalStatus:std_msgs/Header"
)

get_filename_component(_filename "/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitActionFeedback.msg" NAME_WE)
add_custom_target(_hello_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hello_ros" "/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitActionFeedback.msg" "actionlib_msgs/GoalID:actionlib_msgs/GoalStatus:std_msgs/Header:hello_ros/TimeWaitFeedback"
)

get_filename_component(_filename "/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitGoal.msg" NAME_WE)
add_custom_target(_hello_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hello_ros" "/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitGoal.msg" ""
)

get_filename_component(_filename "/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitResult.msg" NAME_WE)
add_custom_target(_hello_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hello_ros" "/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitResult.msg" ""
)

get_filename_component(_filename "/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitFeedback.msg" NAME_WE)
add_custom_target(_hello_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hello_ros" "/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitFeedback.msg" ""
)

get_filename_component(_filename "/home/sejongtp07/kuLimo/catkin_ws/src/hello_ros/srv/AddTwoInts.srv" NAME_WE)
add_custom_target(_hello_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hello_ros" "/home/sejongtp07/kuLimo/catkin_ws/src/hello_ros/srv/AddTwoInts.srv" "std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(hello_ros
  "/home/sejongtp07/kuLimo/catkin_ws/src/hello_ros/msg/MyTopic.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hello_ros
)
_generate_msg_cpp(hello_ros
  "/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitGoal.msg;/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitActionFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitResult.msg;/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitActionResult.msg;/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitActionGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hello_ros
)
_generate_msg_cpp(hello_ros
  "/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hello_ros
)
_generate_msg_cpp(hello_ros
  "/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hello_ros
)
_generate_msg_cpp(hello_ros
  "/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hello_ros
)
_generate_msg_cpp(hello_ros
  "/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hello_ros
)
_generate_msg_cpp(hello_ros
  "/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hello_ros
)
_generate_msg_cpp(hello_ros
  "/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hello_ros
)

### Generating Services
_generate_srv_cpp(hello_ros
  "/home/sejongtp07/kuLimo/catkin_ws/src/hello_ros/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hello_ros
)

### Generating Module File
_generate_module_cpp(hello_ros
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hello_ros
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(hello_ros_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(hello_ros_generate_messages hello_ros_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sejongtp07/kuLimo/catkin_ws/src/hello_ros/msg/MyTopic.msg" NAME_WE)
add_dependencies(hello_ros_generate_messages_cpp _hello_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitAction.msg" NAME_WE)
add_dependencies(hello_ros_generate_messages_cpp _hello_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitActionGoal.msg" NAME_WE)
add_dependencies(hello_ros_generate_messages_cpp _hello_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitActionResult.msg" NAME_WE)
add_dependencies(hello_ros_generate_messages_cpp _hello_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitActionFeedback.msg" NAME_WE)
add_dependencies(hello_ros_generate_messages_cpp _hello_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitGoal.msg" NAME_WE)
add_dependencies(hello_ros_generate_messages_cpp _hello_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitResult.msg" NAME_WE)
add_dependencies(hello_ros_generate_messages_cpp _hello_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitFeedback.msg" NAME_WE)
add_dependencies(hello_ros_generate_messages_cpp _hello_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sejongtp07/kuLimo/catkin_ws/src/hello_ros/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(hello_ros_generate_messages_cpp _hello_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hello_ros_gencpp)
add_dependencies(hello_ros_gencpp hello_ros_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hello_ros_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(hello_ros
  "/home/sejongtp07/kuLimo/catkin_ws/src/hello_ros/msg/MyTopic.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hello_ros
)
_generate_msg_eus(hello_ros
  "/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitGoal.msg;/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitActionFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitResult.msg;/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitActionResult.msg;/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitActionGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hello_ros
)
_generate_msg_eus(hello_ros
  "/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hello_ros
)
_generate_msg_eus(hello_ros
  "/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hello_ros
)
_generate_msg_eus(hello_ros
  "/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hello_ros
)
_generate_msg_eus(hello_ros
  "/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hello_ros
)
_generate_msg_eus(hello_ros
  "/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hello_ros
)
_generate_msg_eus(hello_ros
  "/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hello_ros
)

### Generating Services
_generate_srv_eus(hello_ros
  "/home/sejongtp07/kuLimo/catkin_ws/src/hello_ros/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hello_ros
)

### Generating Module File
_generate_module_eus(hello_ros
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hello_ros
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(hello_ros_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(hello_ros_generate_messages hello_ros_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sejongtp07/kuLimo/catkin_ws/src/hello_ros/msg/MyTopic.msg" NAME_WE)
add_dependencies(hello_ros_generate_messages_eus _hello_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitAction.msg" NAME_WE)
add_dependencies(hello_ros_generate_messages_eus _hello_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitActionGoal.msg" NAME_WE)
add_dependencies(hello_ros_generate_messages_eus _hello_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitActionResult.msg" NAME_WE)
add_dependencies(hello_ros_generate_messages_eus _hello_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitActionFeedback.msg" NAME_WE)
add_dependencies(hello_ros_generate_messages_eus _hello_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitGoal.msg" NAME_WE)
add_dependencies(hello_ros_generate_messages_eus _hello_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitResult.msg" NAME_WE)
add_dependencies(hello_ros_generate_messages_eus _hello_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitFeedback.msg" NAME_WE)
add_dependencies(hello_ros_generate_messages_eus _hello_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sejongtp07/kuLimo/catkin_ws/src/hello_ros/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(hello_ros_generate_messages_eus _hello_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hello_ros_geneus)
add_dependencies(hello_ros_geneus hello_ros_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hello_ros_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(hello_ros
  "/home/sejongtp07/kuLimo/catkin_ws/src/hello_ros/msg/MyTopic.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hello_ros
)
_generate_msg_lisp(hello_ros
  "/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitGoal.msg;/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitActionFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitResult.msg;/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitActionResult.msg;/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitActionGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hello_ros
)
_generate_msg_lisp(hello_ros
  "/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hello_ros
)
_generate_msg_lisp(hello_ros
  "/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hello_ros
)
_generate_msg_lisp(hello_ros
  "/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hello_ros
)
_generate_msg_lisp(hello_ros
  "/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hello_ros
)
_generate_msg_lisp(hello_ros
  "/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hello_ros
)
_generate_msg_lisp(hello_ros
  "/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hello_ros
)

### Generating Services
_generate_srv_lisp(hello_ros
  "/home/sejongtp07/kuLimo/catkin_ws/src/hello_ros/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hello_ros
)

### Generating Module File
_generate_module_lisp(hello_ros
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hello_ros
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(hello_ros_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(hello_ros_generate_messages hello_ros_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sejongtp07/kuLimo/catkin_ws/src/hello_ros/msg/MyTopic.msg" NAME_WE)
add_dependencies(hello_ros_generate_messages_lisp _hello_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitAction.msg" NAME_WE)
add_dependencies(hello_ros_generate_messages_lisp _hello_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitActionGoal.msg" NAME_WE)
add_dependencies(hello_ros_generate_messages_lisp _hello_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitActionResult.msg" NAME_WE)
add_dependencies(hello_ros_generate_messages_lisp _hello_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitActionFeedback.msg" NAME_WE)
add_dependencies(hello_ros_generate_messages_lisp _hello_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitGoal.msg" NAME_WE)
add_dependencies(hello_ros_generate_messages_lisp _hello_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitResult.msg" NAME_WE)
add_dependencies(hello_ros_generate_messages_lisp _hello_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitFeedback.msg" NAME_WE)
add_dependencies(hello_ros_generate_messages_lisp _hello_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sejongtp07/kuLimo/catkin_ws/src/hello_ros/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(hello_ros_generate_messages_lisp _hello_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hello_ros_genlisp)
add_dependencies(hello_ros_genlisp hello_ros_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hello_ros_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(hello_ros
  "/home/sejongtp07/kuLimo/catkin_ws/src/hello_ros/msg/MyTopic.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hello_ros
)
_generate_msg_nodejs(hello_ros
  "/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitGoal.msg;/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitActionFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitResult.msg;/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitActionResult.msg;/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitActionGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hello_ros
)
_generate_msg_nodejs(hello_ros
  "/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hello_ros
)
_generate_msg_nodejs(hello_ros
  "/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hello_ros
)
_generate_msg_nodejs(hello_ros
  "/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hello_ros
)
_generate_msg_nodejs(hello_ros
  "/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hello_ros
)
_generate_msg_nodejs(hello_ros
  "/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hello_ros
)
_generate_msg_nodejs(hello_ros
  "/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hello_ros
)

### Generating Services
_generate_srv_nodejs(hello_ros
  "/home/sejongtp07/kuLimo/catkin_ws/src/hello_ros/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hello_ros
)

### Generating Module File
_generate_module_nodejs(hello_ros
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hello_ros
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(hello_ros_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(hello_ros_generate_messages hello_ros_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sejongtp07/kuLimo/catkin_ws/src/hello_ros/msg/MyTopic.msg" NAME_WE)
add_dependencies(hello_ros_generate_messages_nodejs _hello_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitAction.msg" NAME_WE)
add_dependencies(hello_ros_generate_messages_nodejs _hello_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitActionGoal.msg" NAME_WE)
add_dependencies(hello_ros_generate_messages_nodejs _hello_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitActionResult.msg" NAME_WE)
add_dependencies(hello_ros_generate_messages_nodejs _hello_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitActionFeedback.msg" NAME_WE)
add_dependencies(hello_ros_generate_messages_nodejs _hello_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitGoal.msg" NAME_WE)
add_dependencies(hello_ros_generate_messages_nodejs _hello_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitResult.msg" NAME_WE)
add_dependencies(hello_ros_generate_messages_nodejs _hello_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitFeedback.msg" NAME_WE)
add_dependencies(hello_ros_generate_messages_nodejs _hello_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sejongtp07/kuLimo/catkin_ws/src/hello_ros/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(hello_ros_generate_messages_nodejs _hello_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hello_ros_gennodejs)
add_dependencies(hello_ros_gennodejs hello_ros_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hello_ros_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(hello_ros
  "/home/sejongtp07/kuLimo/catkin_ws/src/hello_ros/msg/MyTopic.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hello_ros
)
_generate_msg_py(hello_ros
  "/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitGoal.msg;/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitActionFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitResult.msg;/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitActionResult.msg;/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitActionGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hello_ros
)
_generate_msg_py(hello_ros
  "/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hello_ros
)
_generate_msg_py(hello_ros
  "/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hello_ros
)
_generate_msg_py(hello_ros
  "/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hello_ros
)
_generate_msg_py(hello_ros
  "/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hello_ros
)
_generate_msg_py(hello_ros
  "/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hello_ros
)
_generate_msg_py(hello_ros
  "/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hello_ros
)

### Generating Services
_generate_srv_py(hello_ros
  "/home/sejongtp07/kuLimo/catkin_ws/src/hello_ros/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hello_ros
)

### Generating Module File
_generate_module_py(hello_ros
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hello_ros
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(hello_ros_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(hello_ros_generate_messages hello_ros_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sejongtp07/kuLimo/catkin_ws/src/hello_ros/msg/MyTopic.msg" NAME_WE)
add_dependencies(hello_ros_generate_messages_py _hello_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitAction.msg" NAME_WE)
add_dependencies(hello_ros_generate_messages_py _hello_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitActionGoal.msg" NAME_WE)
add_dependencies(hello_ros_generate_messages_py _hello_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitActionResult.msg" NAME_WE)
add_dependencies(hello_ros_generate_messages_py _hello_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitActionFeedback.msg" NAME_WE)
add_dependencies(hello_ros_generate_messages_py _hello_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitGoal.msg" NAME_WE)
add_dependencies(hello_ros_generate_messages_py _hello_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitResult.msg" NAME_WE)
add_dependencies(hello_ros_generate_messages_py _hello_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitFeedback.msg" NAME_WE)
add_dependencies(hello_ros_generate_messages_py _hello_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sejongtp07/kuLimo/catkin_ws/src/hello_ros/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(hello_ros_generate_messages_py _hello_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hello_ros_genpy)
add_dependencies(hello_ros_genpy hello_ros_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hello_ros_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hello_ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hello_ros
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(hello_ros_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(hello_ros_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hello_ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hello_ros
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(hello_ros_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(hello_ros_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hello_ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hello_ros
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(hello_ros_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(hello_ros_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hello_ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hello_ros
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(hello_ros_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(hello_ros_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hello_ros)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hello_ros\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hello_ros
    DESTINATION ${genpy_INSTALL_DIR}
    # skip all init files
    PATTERN "__init__.py" EXCLUDE
    PATTERN "__init__.pyc" EXCLUDE
  )
  # install init files which are not in the root folder of the generated code
  string(REGEX REPLACE "([][+.*()^])" "\\\\\\1" ESCAPED_PATH "${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hello_ros")
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hello_ros
    DESTINATION ${genpy_INSTALL_DIR}
    FILES_MATCHING
    REGEX "${ESCAPED_PATH}/.+/__init__.pyc?$"
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(hello_ros_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(hello_ros_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
