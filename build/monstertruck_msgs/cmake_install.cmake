# Install script for directory: /home/evan/share/coverage_path_ws/src/monstertruck_msgs

# Set the install prefix
IF(NOT DEFINED CMAKE_INSTALL_PREFIX)
  SET(CMAKE_INSTALL_PREFIX "/home/evan/share/coverage_path_ws/install")
ENDIF(NOT DEFINED CMAKE_INSTALL_PREFIX)
STRING(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
IF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  IF(BUILD_TYPE)
    STRING(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  ELSE(BUILD_TYPE)
    SET(CMAKE_INSTALL_CONFIG_NAME "Debug")
  ENDIF(BUILD_TYPE)
  MESSAGE(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
ENDIF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)

# Set the component getting installed.
IF(NOT CMAKE_INSTALL_COMPONENT)
  IF(COMPONENT)
    MESSAGE(STATUS "Install component: \"${COMPONENT}\"")
    SET(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  ELSE(COMPONENT)
    SET(CMAKE_INSTALL_COMPONENT)
  ENDIF(COMPONENT)
ENDIF(NOT CMAKE_INSTALL_COMPONENT)

# Install shared libraries without execute permission?
IF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  SET(CMAKE_INSTALL_SO_NO_EXE "1")
ENDIF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/monstertruck_msgs/msg" TYPE FILE FILES
    "/home/evan/share/coverage_path_ws/src/monstertruck_msgs/msg/Compass.msg"
    "/home/evan/share/coverage_path_ws/src/monstertruck_msgs/msg/PositionFeedback.msg"
    "/home/evan/share/coverage_path_ws/src/monstertruck_msgs/msg/ServoCommands.msg"
    "/home/evan/share/coverage_path_ws/src/monstertruck_msgs/msg/Gps.msg"
    "/home/evan/share/coverage_path_ws/src/monstertruck_msgs/msg/RawImu.msg"
    "/home/evan/share/coverage_path_ws/src/monstertruck_msgs/msg/ServoPosition.msg"
    "/home/evan/share/coverage_path_ws/src/monstertruck_msgs/msg/MotionCommand.msg"
    "/home/evan/share/coverage_path_ws/src/monstertruck_msgs/msg/RawOdometry.msg"
    "/home/evan/share/coverage_path_ws/src/monstertruck_msgs/msg/ServoPositions.msg"
    "/home/evan/share/coverage_path_ws/src/monstertruck_msgs/msg/NavigationSolution.msg"
    "/home/evan/share/coverage_path_ws/src/monstertruck_msgs/msg/ServoCommand.msg"
    "/home/evan/share/coverage_path_ws/src/monstertruck_msgs/msg/Status.msg"
    "/home/evan/share/coverage_path_ws/src/monstertruck_msgs/msg/Pdout.msg"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/monstertruck_msgs/srv" TYPE FILE FILES
    "/home/evan/share/coverage_path_ws/src/monstertruck_msgs/srv/GetGazeDirection.srv"
    "/home/evan/share/coverage_path_ws/src/monstertruck_msgs/srv/LookAt.srv"
    "/home/evan/share/coverage_path_ws/src/monstertruck_msgs/srv/SetAlternativeTolerance.srv"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/monstertruck_msgs/cmake" TYPE FILE FILES "/home/evan/share/coverage_path_ws/build/monstertruck_msgs/catkin_generated/installspace/monstertruck_msgs-msg-paths.cmake")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/evan/share/coverage_path_ws/devel/include/monstertruck_msgs")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/evan/share/coverage_path_ws/devel/share/common-lisp/ros/monstertruck_msgs")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/evan/share/coverage_path_ws/devel/lib/python2.7/dist-packages/monstertruck_msgs")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/evan/share/coverage_path_ws/devel/lib/python2.7/dist-packages/monstertruck_msgs")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/evan/share/coverage_path_ws/build/monstertruck_msgs/catkin_generated/installspace/monstertruck_msgs.pc")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/monstertruck_msgs/cmake" TYPE FILE FILES "/home/evan/share/coverage_path_ws/build/monstertruck_msgs/catkin_generated/installspace/monstertruck_msgs-msg-extras.cmake")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/monstertruck_msgs/cmake" TYPE FILE FILES
    "/home/evan/share/coverage_path_ws/build/monstertruck_msgs/catkin_generated/installspace/monstertruck_msgsConfig.cmake"
    "/home/evan/share/coverage_path_ws/build/monstertruck_msgs/catkin_generated/installspace/monstertruck_msgsConfig-version.cmake"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/monstertruck_msgs" TYPE FILE FILES "/home/evan/share/coverage_path_ws/src/monstertruck_msgs/package.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

