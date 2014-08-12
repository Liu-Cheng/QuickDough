# Install script for directory: /home/liucheng/gitrepo/project/opencv/opencv-2.4.9/samples/gpu

# Set the install prefix
IF(NOT DEFINED CMAKE_INSTALL_PREFIX)
  SET(CMAKE_INSTALL_PREFIX "/usr/local")
ENDIF(NOT DEFINED CMAKE_INSTALL_PREFIX)
STRING(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
IF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  IF(BUILD_TYPE)
    STRING(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  ELSE(BUILD_TYPE)
    SET(CMAKE_INSTALL_CONFIG_NAME "Release")
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

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "samples")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/OpenCV/samples/gpu/performance" TYPE FILE PERMISSIONS OWNER_READ GROUP_READ WORLD_READ FILES
    "/home/liucheng/gitrepo/project/opencv/opencv-2.4.9/samples/gpu/performance/tests.cpp"
    "/home/liucheng/gitrepo/project/opencv/opencv-2.4.9/samples/gpu/performance/performance.cpp"
    "/home/liucheng/gitrepo/project/opencv/opencv-2.4.9/samples/gpu/performance/performance.h"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "samples")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "samples")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/OpenCV/samples/gpu" TYPE FILE PERMISSIONS OWNER_READ GROUP_READ WORLD_READ FILES
    "/home/liucheng/gitrepo/project/opencv/opencv-2.4.9/samples/gpu/stereo_match.cpp"
    "/home/liucheng/gitrepo/project/opencv/opencv-2.4.9/samples/gpu/video_writer.cpp"
    "/home/liucheng/gitrepo/project/opencv/opencv-2.4.9/samples/gpu/video_reader.cpp"
    "/home/liucheng/gitrepo/project/opencv/opencv-2.4.9/samples/gpu/opengl.cpp"
    "/home/liucheng/gitrepo/project/opencv/opencv-2.4.9/samples/gpu/farneback_optical_flow.cpp"
    "/home/liucheng/gitrepo/project/opencv/opencv-2.4.9/samples/gpu/driver_api_stereo_multi.cpp"
    "/home/liucheng/gitrepo/project/opencv/opencv-2.4.9/samples/gpu/super_resolution.cpp"
    "/home/liucheng/gitrepo/project/opencv/opencv-2.4.9/samples/gpu/multi.cpp"
    "/home/liucheng/gitrepo/project/opencv/opencv-2.4.9/samples/gpu/opticalflow_nvidia_api.cpp"
    "/home/liucheng/gitrepo/project/opencv/opencv-2.4.9/samples/gpu/bgfg_segm.cpp"
    "/home/liucheng/gitrepo/project/opencv/opencv-2.4.9/samples/gpu/brox_optical_flow.cpp"
    "/home/liucheng/gitrepo/project/opencv/opencv-2.4.9/samples/gpu/surf_keypoint_matcher.cpp"
    "/home/liucheng/gitrepo/project/opencv/opencv-2.4.9/samples/gpu/pyrlk_optical_flow.cpp"
    "/home/liucheng/gitrepo/project/opencv/opencv-2.4.9/samples/gpu/generalized_hough.cpp"
    "/home/liucheng/gitrepo/project/opencv/opencv-2.4.9/samples/gpu/optical_flow.cpp"
    "/home/liucheng/gitrepo/project/opencv/opencv-2.4.9/samples/gpu/houghlines.cpp"
    "/home/liucheng/gitrepo/project/opencv/opencv-2.4.9/samples/gpu/alpha_comp.cpp"
    "/home/liucheng/gitrepo/project/opencv/opencv-2.4.9/samples/gpu/cascadeclassifier.cpp"
    "/home/liucheng/gitrepo/project/opencv/opencv-2.4.9/samples/gpu/morphology.cpp"
    "/home/liucheng/gitrepo/project/opencv/opencv-2.4.9/samples/gpu/hog.cpp"
    "/home/liucheng/gitrepo/project/opencv/opencv-2.4.9/samples/gpu/driver_api_multi.cpp"
    "/home/liucheng/gitrepo/project/opencv/opencv-2.4.9/samples/gpu/cascadeclassifier_nvidia_api.cpp"
    "/home/liucheng/gitrepo/project/opencv/opencv-2.4.9/samples/gpu/stereo_multi.cpp"
    "/home/liucheng/gitrepo/project/opencv/opencv-2.4.9/samples/gpu/aloeR.jpg"
    "/home/liucheng/gitrepo/project/opencv/opencv-2.4.9/samples/gpu/aloeL.jpg"
    "/home/liucheng/gitrepo/project/opencv/opencv-2.4.9/samples/gpu/basketball1.png"
    "/home/liucheng/gitrepo/project/opencv/opencv-2.4.9/samples/gpu/road.png"
    "/home/liucheng/gitrepo/project/opencv/opencv-2.4.9/samples/gpu/rubberwhale2.png"
    "/home/liucheng/gitrepo/project/opencv/opencv-2.4.9/samples/gpu/tsucuba_left.png"
    "/home/liucheng/gitrepo/project/opencv/opencv-2.4.9/samples/gpu/basketball2.png"
    "/home/liucheng/gitrepo/project/opencv/opencv-2.4.9/samples/gpu/tsucuba_right.png"
    "/home/liucheng/gitrepo/project/opencv/opencv-2.4.9/samples/gpu/rubberwhale1.png"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "samples")

