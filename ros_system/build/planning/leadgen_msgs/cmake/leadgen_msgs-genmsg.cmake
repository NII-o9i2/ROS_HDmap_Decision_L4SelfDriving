# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "leadgen_msgs: 9 messages, 0 services")

set(MSG_I_FLAGS "-Ileadgen_msgs:/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/./;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(leadgen_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/.//LeadgenHMI.msg" NAME_WE)
add_custom_target(_leadgen_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "leadgen_msgs" "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/.//LeadgenHMI.msg" "std_msgs/Header:leadgen_msgs/LeadgenWaypoint:geometry_msgs/Vector3:geometry_msgs/Point:leadgen_msgs/LeadgenPointArray:leadgen_msgs/LeadgenObstacleOutput"
)

get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/.//LeadgenTrajectory.msg" NAME_WE)
add_custom_target(_leadgen_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "leadgen_msgs" "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/.//LeadgenTrajectory.msg" "leadgen_msgs/LeadgenWaypoint:std_msgs/Header:geometry_msgs/Point"
)

get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/.//LeadgenWaypoint.msg" NAME_WE)
add_custom_target(_leadgen_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "leadgen_msgs" "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/.//LeadgenWaypoint.msg" "geometry_msgs/Point"
)

get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/.//LeadgenPointArray.msg" NAME_WE)
add_custom_target(_leadgen_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "leadgen_msgs" "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/.//LeadgenPointArray.msg" "geometry_msgs/Point"
)

get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/.//LeadgenObsInputArray.msg" NAME_WE)
add_custom_target(_leadgen_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "leadgen_msgs" "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/.//LeadgenObsInputArray.msg" "leadgen_msgs/LeadgenObstacleInput:geometry_msgs/Vector3:std_msgs/Header:geometry_msgs/Point"
)

get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/.//LeadgenChassis.msg" NAME_WE)
add_custom_target(_leadgen_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "leadgen_msgs" "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/.//LeadgenChassis.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/.//LeadgenObstacleInput.msg" NAME_WE)
add_custom_target(_leadgen_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "leadgen_msgs" "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/.//LeadgenObstacleInput.msg" "geometry_msgs/Vector3:std_msgs/Header:geometry_msgs/Point"
)

get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/.//LeadgenObstacleOutput.msg" NAME_WE)
add_custom_target(_leadgen_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "leadgen_msgs" "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/.//LeadgenObstacleOutput.msg" "geometry_msgs/Vector3:leadgen_msgs/LeadgenWaypoint:std_msgs/Header:geometry_msgs/Point"
)

get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/.//LeadgenStatus.msg" NAME_WE)
add_custom_target(_leadgen_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "leadgen_msgs" "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/.//LeadgenStatus.msg" "leadgen_msgs/LeadgenChassis:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Vector3:geometry_msgs/Point:geometry_msgs/Pose"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(leadgen_msgs
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/.//LeadgenHMI.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/./LeadgenWaypoint.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/./LeadgenPointArray.msg;/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/./LeadgenObstacleOutput.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/leadgen_msgs
)
_generate_msg_cpp(leadgen_msgs
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/.//LeadgenTrajectory.msg"
  "${MSG_I_FLAGS}"
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/./LeadgenWaypoint.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/leadgen_msgs
)
_generate_msg_cpp(leadgen_msgs
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/.//LeadgenWaypoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/leadgen_msgs
)
_generate_msg_cpp(leadgen_msgs
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/.//LeadgenPointArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/leadgen_msgs
)
_generate_msg_cpp(leadgen_msgs
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/.//LeadgenObsInputArray.msg"
  "${MSG_I_FLAGS}"
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/./LeadgenObstacleInput.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/leadgen_msgs
)
_generate_msg_cpp(leadgen_msgs
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/.//LeadgenChassis.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/leadgen_msgs
)
_generate_msg_cpp(leadgen_msgs
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/.//LeadgenObstacleInput.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/leadgen_msgs
)
_generate_msg_cpp(leadgen_msgs
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/.//LeadgenObstacleOutput.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/./LeadgenWaypoint.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/leadgen_msgs
)
_generate_msg_cpp(leadgen_msgs
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/.//LeadgenStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/./LeadgenChassis.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/leadgen_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(leadgen_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/leadgen_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(leadgen_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(leadgen_msgs_generate_messages leadgen_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/.//LeadgenHMI.msg" NAME_WE)
add_dependencies(leadgen_msgs_generate_messages_cpp _leadgen_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/.//LeadgenTrajectory.msg" NAME_WE)
add_dependencies(leadgen_msgs_generate_messages_cpp _leadgen_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/.//LeadgenWaypoint.msg" NAME_WE)
add_dependencies(leadgen_msgs_generate_messages_cpp _leadgen_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/.//LeadgenPointArray.msg" NAME_WE)
add_dependencies(leadgen_msgs_generate_messages_cpp _leadgen_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/.//LeadgenObsInputArray.msg" NAME_WE)
add_dependencies(leadgen_msgs_generate_messages_cpp _leadgen_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/.//LeadgenChassis.msg" NAME_WE)
add_dependencies(leadgen_msgs_generate_messages_cpp _leadgen_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/.//LeadgenObstacleInput.msg" NAME_WE)
add_dependencies(leadgen_msgs_generate_messages_cpp _leadgen_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/.//LeadgenObstacleOutput.msg" NAME_WE)
add_dependencies(leadgen_msgs_generate_messages_cpp _leadgen_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/.//LeadgenStatus.msg" NAME_WE)
add_dependencies(leadgen_msgs_generate_messages_cpp _leadgen_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(leadgen_msgs_gencpp)
add_dependencies(leadgen_msgs_gencpp leadgen_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS leadgen_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(leadgen_msgs
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/.//LeadgenHMI.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/./LeadgenWaypoint.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/./LeadgenPointArray.msg;/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/./LeadgenObstacleOutput.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/leadgen_msgs
)
_generate_msg_eus(leadgen_msgs
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/.//LeadgenTrajectory.msg"
  "${MSG_I_FLAGS}"
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/./LeadgenWaypoint.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/leadgen_msgs
)
_generate_msg_eus(leadgen_msgs
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/.//LeadgenWaypoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/leadgen_msgs
)
_generate_msg_eus(leadgen_msgs
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/.//LeadgenPointArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/leadgen_msgs
)
_generate_msg_eus(leadgen_msgs
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/.//LeadgenObsInputArray.msg"
  "${MSG_I_FLAGS}"
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/./LeadgenObstacleInput.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/leadgen_msgs
)
_generate_msg_eus(leadgen_msgs
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/.//LeadgenChassis.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/leadgen_msgs
)
_generate_msg_eus(leadgen_msgs
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/.//LeadgenObstacleInput.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/leadgen_msgs
)
_generate_msg_eus(leadgen_msgs
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/.//LeadgenObstacleOutput.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/./LeadgenWaypoint.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/leadgen_msgs
)
_generate_msg_eus(leadgen_msgs
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/.//LeadgenStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/./LeadgenChassis.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/leadgen_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(leadgen_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/leadgen_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(leadgen_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(leadgen_msgs_generate_messages leadgen_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/.//LeadgenHMI.msg" NAME_WE)
add_dependencies(leadgen_msgs_generate_messages_eus _leadgen_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/.//LeadgenTrajectory.msg" NAME_WE)
add_dependencies(leadgen_msgs_generate_messages_eus _leadgen_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/.//LeadgenWaypoint.msg" NAME_WE)
add_dependencies(leadgen_msgs_generate_messages_eus _leadgen_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/.//LeadgenPointArray.msg" NAME_WE)
add_dependencies(leadgen_msgs_generate_messages_eus _leadgen_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/.//LeadgenObsInputArray.msg" NAME_WE)
add_dependencies(leadgen_msgs_generate_messages_eus _leadgen_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/.//LeadgenChassis.msg" NAME_WE)
add_dependencies(leadgen_msgs_generate_messages_eus _leadgen_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/.//LeadgenObstacleInput.msg" NAME_WE)
add_dependencies(leadgen_msgs_generate_messages_eus _leadgen_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/.//LeadgenObstacleOutput.msg" NAME_WE)
add_dependencies(leadgen_msgs_generate_messages_eus _leadgen_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/.//LeadgenStatus.msg" NAME_WE)
add_dependencies(leadgen_msgs_generate_messages_eus _leadgen_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(leadgen_msgs_geneus)
add_dependencies(leadgen_msgs_geneus leadgen_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS leadgen_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(leadgen_msgs
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/.//LeadgenHMI.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/./LeadgenWaypoint.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/./LeadgenPointArray.msg;/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/./LeadgenObstacleOutput.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/leadgen_msgs
)
_generate_msg_lisp(leadgen_msgs
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/.//LeadgenTrajectory.msg"
  "${MSG_I_FLAGS}"
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/./LeadgenWaypoint.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/leadgen_msgs
)
_generate_msg_lisp(leadgen_msgs
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/.//LeadgenWaypoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/leadgen_msgs
)
_generate_msg_lisp(leadgen_msgs
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/.//LeadgenPointArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/leadgen_msgs
)
_generate_msg_lisp(leadgen_msgs
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/.//LeadgenObsInputArray.msg"
  "${MSG_I_FLAGS}"
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/./LeadgenObstacleInput.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/leadgen_msgs
)
_generate_msg_lisp(leadgen_msgs
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/.//LeadgenChassis.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/leadgen_msgs
)
_generate_msg_lisp(leadgen_msgs
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/.//LeadgenObstacleInput.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/leadgen_msgs
)
_generate_msg_lisp(leadgen_msgs
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/.//LeadgenObstacleOutput.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/./LeadgenWaypoint.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/leadgen_msgs
)
_generate_msg_lisp(leadgen_msgs
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/.//LeadgenStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/./LeadgenChassis.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/leadgen_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(leadgen_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/leadgen_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(leadgen_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(leadgen_msgs_generate_messages leadgen_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/.//LeadgenHMI.msg" NAME_WE)
add_dependencies(leadgen_msgs_generate_messages_lisp _leadgen_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/.//LeadgenTrajectory.msg" NAME_WE)
add_dependencies(leadgen_msgs_generate_messages_lisp _leadgen_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/.//LeadgenWaypoint.msg" NAME_WE)
add_dependencies(leadgen_msgs_generate_messages_lisp _leadgen_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/.//LeadgenPointArray.msg" NAME_WE)
add_dependencies(leadgen_msgs_generate_messages_lisp _leadgen_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/.//LeadgenObsInputArray.msg" NAME_WE)
add_dependencies(leadgen_msgs_generate_messages_lisp _leadgen_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/.//LeadgenChassis.msg" NAME_WE)
add_dependencies(leadgen_msgs_generate_messages_lisp _leadgen_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/.//LeadgenObstacleInput.msg" NAME_WE)
add_dependencies(leadgen_msgs_generate_messages_lisp _leadgen_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/.//LeadgenObstacleOutput.msg" NAME_WE)
add_dependencies(leadgen_msgs_generate_messages_lisp _leadgen_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/.//LeadgenStatus.msg" NAME_WE)
add_dependencies(leadgen_msgs_generate_messages_lisp _leadgen_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(leadgen_msgs_genlisp)
add_dependencies(leadgen_msgs_genlisp leadgen_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS leadgen_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(leadgen_msgs
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/.//LeadgenHMI.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/./LeadgenWaypoint.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/./LeadgenPointArray.msg;/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/./LeadgenObstacleOutput.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/leadgen_msgs
)
_generate_msg_nodejs(leadgen_msgs
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/.//LeadgenTrajectory.msg"
  "${MSG_I_FLAGS}"
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/./LeadgenWaypoint.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/leadgen_msgs
)
_generate_msg_nodejs(leadgen_msgs
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/.//LeadgenWaypoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/leadgen_msgs
)
_generate_msg_nodejs(leadgen_msgs
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/.//LeadgenPointArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/leadgen_msgs
)
_generate_msg_nodejs(leadgen_msgs
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/.//LeadgenObsInputArray.msg"
  "${MSG_I_FLAGS}"
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/./LeadgenObstacleInput.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/leadgen_msgs
)
_generate_msg_nodejs(leadgen_msgs
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/.//LeadgenChassis.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/leadgen_msgs
)
_generate_msg_nodejs(leadgen_msgs
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/.//LeadgenObstacleInput.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/leadgen_msgs
)
_generate_msg_nodejs(leadgen_msgs
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/.//LeadgenObstacleOutput.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/./LeadgenWaypoint.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/leadgen_msgs
)
_generate_msg_nodejs(leadgen_msgs
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/.//LeadgenStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/./LeadgenChassis.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/leadgen_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(leadgen_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/leadgen_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(leadgen_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(leadgen_msgs_generate_messages leadgen_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/.//LeadgenHMI.msg" NAME_WE)
add_dependencies(leadgen_msgs_generate_messages_nodejs _leadgen_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/.//LeadgenTrajectory.msg" NAME_WE)
add_dependencies(leadgen_msgs_generate_messages_nodejs _leadgen_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/.//LeadgenWaypoint.msg" NAME_WE)
add_dependencies(leadgen_msgs_generate_messages_nodejs _leadgen_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/.//LeadgenPointArray.msg" NAME_WE)
add_dependencies(leadgen_msgs_generate_messages_nodejs _leadgen_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/.//LeadgenObsInputArray.msg" NAME_WE)
add_dependencies(leadgen_msgs_generate_messages_nodejs _leadgen_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/.//LeadgenChassis.msg" NAME_WE)
add_dependencies(leadgen_msgs_generate_messages_nodejs _leadgen_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/.//LeadgenObstacleInput.msg" NAME_WE)
add_dependencies(leadgen_msgs_generate_messages_nodejs _leadgen_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/.//LeadgenObstacleOutput.msg" NAME_WE)
add_dependencies(leadgen_msgs_generate_messages_nodejs _leadgen_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/.//LeadgenStatus.msg" NAME_WE)
add_dependencies(leadgen_msgs_generate_messages_nodejs _leadgen_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(leadgen_msgs_gennodejs)
add_dependencies(leadgen_msgs_gennodejs leadgen_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS leadgen_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(leadgen_msgs
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/.//LeadgenHMI.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/./LeadgenWaypoint.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/./LeadgenPointArray.msg;/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/./LeadgenObstacleOutput.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/leadgen_msgs
)
_generate_msg_py(leadgen_msgs
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/.//LeadgenTrajectory.msg"
  "${MSG_I_FLAGS}"
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/./LeadgenWaypoint.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/leadgen_msgs
)
_generate_msg_py(leadgen_msgs
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/.//LeadgenWaypoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/leadgen_msgs
)
_generate_msg_py(leadgen_msgs
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/.//LeadgenPointArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/leadgen_msgs
)
_generate_msg_py(leadgen_msgs
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/.//LeadgenObsInputArray.msg"
  "${MSG_I_FLAGS}"
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/./LeadgenObstacleInput.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/leadgen_msgs
)
_generate_msg_py(leadgen_msgs
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/.//LeadgenChassis.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/leadgen_msgs
)
_generate_msg_py(leadgen_msgs
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/.//LeadgenObstacleInput.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/leadgen_msgs
)
_generate_msg_py(leadgen_msgs
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/.//LeadgenObstacleOutput.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/./LeadgenWaypoint.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/leadgen_msgs
)
_generate_msg_py(leadgen_msgs
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/.//LeadgenStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/./LeadgenChassis.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/leadgen_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(leadgen_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/leadgen_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(leadgen_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(leadgen_msgs_generate_messages leadgen_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/.//LeadgenHMI.msg" NAME_WE)
add_dependencies(leadgen_msgs_generate_messages_py _leadgen_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/.//LeadgenTrajectory.msg" NAME_WE)
add_dependencies(leadgen_msgs_generate_messages_py _leadgen_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/.//LeadgenWaypoint.msg" NAME_WE)
add_dependencies(leadgen_msgs_generate_messages_py _leadgen_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/.//LeadgenPointArray.msg" NAME_WE)
add_dependencies(leadgen_msgs_generate_messages_py _leadgen_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/.//LeadgenObsInputArray.msg" NAME_WE)
add_dependencies(leadgen_msgs_generate_messages_py _leadgen_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/.//LeadgenChassis.msg" NAME_WE)
add_dependencies(leadgen_msgs_generate_messages_py _leadgen_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/.//LeadgenObstacleInput.msg" NAME_WE)
add_dependencies(leadgen_msgs_generate_messages_py _leadgen_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/.//LeadgenObstacleOutput.msg" NAME_WE)
add_dependencies(leadgen_msgs_generate_messages_py _leadgen_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/.//LeadgenStatus.msg" NAME_WE)
add_dependencies(leadgen_msgs_generate_messages_py _leadgen_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(leadgen_msgs_genpy)
add_dependencies(leadgen_msgs_genpy leadgen_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS leadgen_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/leadgen_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/leadgen_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(leadgen_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(leadgen_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/leadgen_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/leadgen_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(leadgen_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(leadgen_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/leadgen_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/leadgen_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(leadgen_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(leadgen_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/leadgen_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/leadgen_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(leadgen_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(leadgen_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/leadgen_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/leadgen_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/leadgen_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(leadgen_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(leadgen_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
