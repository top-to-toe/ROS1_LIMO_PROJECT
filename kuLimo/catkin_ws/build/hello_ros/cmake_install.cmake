# Install script for directory: /home/sejongtp07/kuLimo/catkin_ws/src/hello_ros

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/sejongtp07/kuLimo/catkin_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  include("/home/sejongtp07/kuLimo/catkin_ws/build/hello_ros/catkin_generated/safe_execute_install.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/hello_ros" TYPE FILE FILES "/home/sejongtp07/kuLimo/catkin_ws/devel/include/hello_ros/SimpleParameterConfig.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/hello_ros" TYPE FILE FILES "/home/sejongtp07/kuLimo/catkin_ws/devel/include/hello_ros/TurtleConfig.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/sejongtp07/kuLimo/catkin_ws/devel/lib/python3/dist-packages/hello_ros/cfg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages/hello_ros" TYPE DIRECTORY FILES "/home/sejongtp07/kuLimo/catkin_ws/devel/lib/python3/dist-packages/hello_ros/cfg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hello_ros/msg" TYPE FILE FILES "/home/sejongtp07/kuLimo/catkin_ws/src/hello_ros/msg/MyTopic.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hello_ros/srv" TYPE FILE FILES "/home/sejongtp07/kuLimo/catkin_ws/src/hello_ros/srv/AddTwoInts.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hello_ros/action" TYPE FILE FILES "/home/sejongtp07/kuLimo/catkin_ws/src/hello_ros/action/TimeWait.action")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hello_ros/msg" TYPE FILE FILES
    "/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitAction.msg"
    "/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitActionGoal.msg"
    "/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitActionResult.msg"
    "/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitActionFeedback.msg"
    "/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitGoal.msg"
    "/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitResult.msg"
    "/home/sejongtp07/kuLimo/catkin_ws/devel/share/hello_ros/msg/TimeWaitFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hello_ros/cmake" TYPE FILE FILES "/home/sejongtp07/kuLimo/catkin_ws/build/hello_ros/catkin_generated/installspace/hello_ros-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/sejongtp07/kuLimo/catkin_ws/devel/include/hello_ros")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/sejongtp07/kuLimo/catkin_ws/devel/share/roseus/ros/hello_ros")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/sejongtp07/kuLimo/catkin_ws/devel/share/common-lisp/ros/hello_ros")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/sejongtp07/kuLimo/catkin_ws/devel/share/gennodejs/ros/hello_ros")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/sejongtp07/kuLimo/catkin_ws/devel/lib/python3/dist-packages/hello_ros")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/sejongtp07/kuLimo/catkin_ws/devel/lib/python3/dist-packages/hello_ros" REGEX "/\\_\\_init\\_\\_\\.py$" EXCLUDE REGEX "/\\_\\_init\\_\\_\\.pyc$" EXCLUDE)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/sejongtp07/kuLimo/catkin_ws/devel/lib/python3/dist-packages/hello_ros" FILES_MATCHING REGEX "/home/sejongtp07/kuLimo/catkin_ws/devel/lib/python3/dist-packages/hello_ros/.+/__init__.pyc?$")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/sejongtp07/kuLimo/catkin_ws/build/hello_ros/catkin_generated/installspace/hello_ros.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hello_ros/cmake" TYPE FILE FILES "/home/sejongtp07/kuLimo/catkin_ws/build/hello_ros/catkin_generated/installspace/hello_ros-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hello_ros/cmake" TYPE FILE FILES
    "/home/sejongtp07/kuLimo/catkin_ws/build/hello_ros/catkin_generated/installspace/hello_rosConfig.cmake"
    "/home/sejongtp07/kuLimo/catkin_ws/build/hello_ros/catkin_generated/installspace/hello_rosConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hello_ros" TYPE FILE FILES "/home/sejongtp07/kuLimo/catkin_ws/src/hello_ros/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/hello_ros" TYPE PROGRAM FILES "/home/sejongtp07/kuLimo/catkin_ws/build/hello_ros/catkin_generated/installspace/hello")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/hello_ros" TYPE PROGRAM FILES "/home/sejongtp07/kuLimo/catkin_ws/build/hello_ros/catkin_generated/installspace/moveTurtle")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/hello_ros" TYPE PROGRAM FILES "/home/sejongtp07/kuLimo/catkin_ws/build/hello_ros/catkin_generated/installspace/moveTurtleClass")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/hello_ros" TYPE PROGRAM FILES "/home/sejongtp07/kuLimo/catkin_ws/build/hello_ros/catkin_generated/installspace/mtpub")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/hello_ros" TYPE PROGRAM FILES "/home/sejongtp07/kuLimo/catkin_ws/build/hello_ros/catkin_generated/installspace/mtsub")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/hello_ros" TYPE PROGRAM FILES "/home/sejongtp07/kuLimo/catkin_ws/build/hello_ros/catkin_generated/installspace/mpub")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/hello_ros" TYPE PROGRAM FILES "/home/sejongtp07/kuLimo/catkin_ws/build/hello_ros/catkin_generated/installspace/msub")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/hello_ros" TYPE PROGRAM FILES "/home/sejongtp07/kuLimo/catkin_ws/build/hello_ros/catkin_generated/installspace/msub2")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/hello_ros" TYPE PROGRAM FILES "/home/sejongtp07/kuLimo/catkin_ws/build/hello_ros/catkin_generated/installspace/simpleServiceServer")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/hello_ros" TYPE PROGRAM FILES "/home/sejongtp07/kuLimo/catkin_ws/build/hello_ros/catkin_generated/installspace/simpleServiceClient")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/hello_ros" TYPE PROGRAM FILES "/home/sejongtp07/kuLimo/catkin_ws/build/hello_ros/catkin_generated/installspace/simpleServiceClient2")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/hello_ros" TYPE PROGRAM FILES "/home/sejongtp07/kuLimo/catkin_ws/build/hello_ros/catkin_generated/installspace/simpleParameter")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/hello_ros" TYPE PROGRAM FILES "/home/sejongtp07/kuLimo/catkin_ws/build/hello_ros/catkin_generated/installspace/simpleParameter2")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/hello_ros" TYPE PROGRAM FILES "/home/sejongtp07/kuLimo/catkin_ws/build/hello_ros/catkin_generated/installspace/myTopicPub")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/hello_ros" TYPE PROGRAM FILES "/home/sejongtp07/kuLimo/catkin_ws/build/hello_ros/catkin_generated/installspace/myTopicSub")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/hello_ros" TYPE PROGRAM FILES "/home/sejongtp07/kuLimo/catkin_ws/build/hello_ros/catkin_generated/installspace/addServer")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/hello_ros" TYPE PROGRAM FILES "/home/sejongtp07/kuLimo/catkin_ws/build/hello_ros/catkin_generated/installspace/addClient")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/hello_ros" TYPE PROGRAM FILES "/home/sejongtp07/kuLimo/catkin_ws/build/hello_ros/catkin_generated/installspace/timeActionServer")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/hello_ros" TYPE PROGRAM FILES "/home/sejongtp07/kuLimo/catkin_ws/build/hello_ros/catkin_generated/installspace/timeActionClient")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/hello_ros" TYPE PROGRAM FILES "/home/sejongtp07/kuLimo/catkin_ws/build/hello_ros/catkin_generated/installspace/timeActionClient2")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/hello_ros" TYPE PROGRAM FILES "/home/sejongtp07/kuLimo/catkin_ws/build/hello_ros/catkin_generated/installspace/circle_limo")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/hello_ros" TYPE PROGRAM FILES "/home/sejongtp07/kuLimo/catkin_ws/build/hello_ros/catkin_generated/installspace/patrol_limo")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/hello_ros" TYPE PROGRAM FILES "/home/sejongtp07/kuLimo/catkin_ws/build/hello_ros/catkin_generated/installspace/patrol_line_limo")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hello_ros" TYPE DIRECTORY FILES
    "/home/sejongtp07/kuLimo/catkin_ws/src/hello_ros/launch"
    "/home/sejongtp07/kuLimo/catkin_ws/src/hello_ros/param"
    )
endif()

