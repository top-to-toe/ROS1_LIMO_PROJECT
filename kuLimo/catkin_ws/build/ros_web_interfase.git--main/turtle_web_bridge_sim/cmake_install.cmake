# Install script for directory: /home/sejongtp07/ROS1_LIMO_PROJECT/kuLimo/catkin_ws/src/ros_web_interfase.git--main/turtle_web_bridge_sim

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/sejongtp07/ROS1_LIMO_PROJECT/kuLimo/catkin_ws/install")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/sejongtp07/ROS1_LIMO_PROJECT/kuLimo/catkin_ws/build/ros_web_interfase.git--main/turtle_web_bridge_sim/catkin_generated/installspace/turtle_web_bridge_sim.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtle_web_bridge_sim/cmake" TYPE FILE FILES
    "/home/sejongtp07/ROS1_LIMO_PROJECT/kuLimo/catkin_ws/build/ros_web_interfase.git--main/turtle_web_bridge_sim/catkin_generated/installspace/turtle_web_bridge_simConfig.cmake"
    "/home/sejongtp07/ROS1_LIMO_PROJECT/kuLimo/catkin_ws/build/ros_web_interfase.git--main/turtle_web_bridge_sim/catkin_generated/installspace/turtle_web_bridge_simConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtle_web_bridge_sim" TYPE FILE FILES "/home/sejongtp07/ROS1_LIMO_PROJECT/kuLimo/catkin_ws/src/ros_web_interfase.git--main/turtle_web_bridge_sim/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/turtle_web_bridge_sim" TYPE PROGRAM FILES "/home/sejongtp07/ROS1_LIMO_PROJECT/kuLimo/catkin_ws/build/ros_web_interfase.git--main/turtle_web_bridge_sim/catkin_generated/installspace/bridge_node.py")
endif()

