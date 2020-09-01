# Install script for directory: /home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/ytthdmap/src

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/install")
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

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/build/ytthdmap/src/catkin_generated/installspace/ytthdmap.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ytthdmap/cmake" TYPE FILE FILES
    "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/build/ytthdmap/src/catkin_generated/installspace/ytthdmapConfig.cmake"
    "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/build/ytthdmap/src/catkin_generated/installspace/ytthdmapConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ytthdmap" TYPE FILE FILES "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/ytthdmap/src/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/ytthdmap/ytthdmap" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/ytthdmap/ytthdmap")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/ytthdmap/ytthdmap"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/ytthdmap" TYPE EXECUTABLE FILES "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/devel/lib/ytthdmap/ytthdmap")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/ytthdmap/ytthdmap" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/ytthdmap/ytthdmap")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/ytthdmap/ytthdmap"
         OLD_RPATH "/opt/ros/kinetic/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/ytthdmap/ytthdmap")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/build/ytthdmap/src/yttmap_ehr/cmake_install.cmake")

endif()

