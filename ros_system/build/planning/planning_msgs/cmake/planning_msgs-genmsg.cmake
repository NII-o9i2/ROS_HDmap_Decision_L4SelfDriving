# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "planning_msgs: 11 messages, 0 services")

set(MSG_I_FLAGS "-Iplanning_msgs:/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/./;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(planning_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//GlobalObstacle.msg" NAME_WE)
add_custom_target(_planning_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "planning_msgs" "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//GlobalObstacle.msg" ""
)

get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//ObstacleIn.msg" NAME_WE)
add_custom_target(_planning_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "planning_msgs" "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//ObstacleIn.msg" ""
)

get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//ObstaclePred.msg" NAME_WE)
add_custom_target(_planning_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "planning_msgs" "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//ObstaclePred.msg" ""
)

get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//StitchDebug.msg" NAME_WE)
add_custom_target(_planning_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "planning_msgs" "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//StitchDebug.msg" ""
)

get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//PathPoint.msg" NAME_WE)
add_custom_target(_planning_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "planning_msgs" "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//PathPoint.msg" ""
)

get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//DecisionDebug.msg" NAME_WE)
add_custom_target(_planning_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "planning_msgs" "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//DecisionDebug.msg" "planning_msgs/ObstacleIn"
)

get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//ADCTrajectory.msg" NAME_WE)
add_custom_target(_planning_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "planning_msgs" "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//ADCTrajectory.msg" "planning_msgs/PredictionDebug:std_msgs/Header:planning_msgs/ObstaclePred:planning_msgs/Propt:planning_msgs/PathPoint:planning_msgs/GlobalObstacle:planning_msgs/LatencyStats"
)

get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//LatencyStats.msg" NAME_WE)
add_custom_target(_planning_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "planning_msgs" "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//LatencyStats.msg" ""
)

get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//Propt.msg" NAME_WE)
add_custom_target(_planning_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "planning_msgs" "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//Propt.msg" ""
)

get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//PlanningDebug.msg" NAME_WE)
add_custom_target(_planning_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "planning_msgs" "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//PlanningDebug.msg" "planning_msgs/StitchDebug:planning_msgs/ObstacleIn:planning_msgs/DecisionDebug"
)

get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//PredictionDebug.msg" NAME_WE)
add_custom_target(_planning_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "planning_msgs" "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//PredictionDebug.msg" "planning_msgs/ObstaclePred:planning_msgs/GlobalObstacle:planning_msgs/Propt"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(planning_msgs
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//GlobalObstacle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/planning_msgs
)
_generate_msg_cpp(planning_msgs
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//ObstacleIn.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/planning_msgs
)
_generate_msg_cpp(planning_msgs
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//ObstaclePred.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/planning_msgs
)
_generate_msg_cpp(planning_msgs
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//StitchDebug.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/planning_msgs
)
_generate_msg_cpp(planning_msgs
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//PathPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/planning_msgs
)
_generate_msg_cpp(planning_msgs
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//DecisionDebug.msg"
  "${MSG_I_FLAGS}"
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/./ObstacleIn.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/planning_msgs
)
_generate_msg_cpp(planning_msgs
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//ADCTrajectory.msg"
  "${MSG_I_FLAGS}"
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/./PredictionDebug.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/./ObstaclePred.msg;/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/./Propt.msg;/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/./PathPoint.msg;/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/./GlobalObstacle.msg;/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/./LatencyStats.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/planning_msgs
)
_generate_msg_cpp(planning_msgs
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//LatencyStats.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/planning_msgs
)
_generate_msg_cpp(planning_msgs
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//Propt.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/planning_msgs
)
_generate_msg_cpp(planning_msgs
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//PlanningDebug.msg"
  "${MSG_I_FLAGS}"
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/./StitchDebug.msg;/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/./ObstacleIn.msg;/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/./DecisionDebug.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/planning_msgs
)
_generate_msg_cpp(planning_msgs
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//PredictionDebug.msg"
  "${MSG_I_FLAGS}"
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/./ObstaclePred.msg;/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/./GlobalObstacle.msg;/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/./Propt.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/planning_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(planning_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/planning_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(planning_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(planning_msgs_generate_messages planning_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//GlobalObstacle.msg" NAME_WE)
add_dependencies(planning_msgs_generate_messages_cpp _planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//ObstacleIn.msg" NAME_WE)
add_dependencies(planning_msgs_generate_messages_cpp _planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//ObstaclePred.msg" NAME_WE)
add_dependencies(planning_msgs_generate_messages_cpp _planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//StitchDebug.msg" NAME_WE)
add_dependencies(planning_msgs_generate_messages_cpp _planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//PathPoint.msg" NAME_WE)
add_dependencies(planning_msgs_generate_messages_cpp _planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//DecisionDebug.msg" NAME_WE)
add_dependencies(planning_msgs_generate_messages_cpp _planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//ADCTrajectory.msg" NAME_WE)
add_dependencies(planning_msgs_generate_messages_cpp _planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//LatencyStats.msg" NAME_WE)
add_dependencies(planning_msgs_generate_messages_cpp _planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//Propt.msg" NAME_WE)
add_dependencies(planning_msgs_generate_messages_cpp _planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//PlanningDebug.msg" NAME_WE)
add_dependencies(planning_msgs_generate_messages_cpp _planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//PredictionDebug.msg" NAME_WE)
add_dependencies(planning_msgs_generate_messages_cpp _planning_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(planning_msgs_gencpp)
add_dependencies(planning_msgs_gencpp planning_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS planning_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(planning_msgs
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//GlobalObstacle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/planning_msgs
)
_generate_msg_eus(planning_msgs
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//ObstacleIn.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/planning_msgs
)
_generate_msg_eus(planning_msgs
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//ObstaclePred.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/planning_msgs
)
_generate_msg_eus(planning_msgs
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//StitchDebug.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/planning_msgs
)
_generate_msg_eus(planning_msgs
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//PathPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/planning_msgs
)
_generate_msg_eus(planning_msgs
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//DecisionDebug.msg"
  "${MSG_I_FLAGS}"
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/./ObstacleIn.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/planning_msgs
)
_generate_msg_eus(planning_msgs
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//ADCTrajectory.msg"
  "${MSG_I_FLAGS}"
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/./PredictionDebug.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/./ObstaclePred.msg;/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/./Propt.msg;/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/./PathPoint.msg;/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/./GlobalObstacle.msg;/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/./LatencyStats.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/planning_msgs
)
_generate_msg_eus(planning_msgs
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//LatencyStats.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/planning_msgs
)
_generate_msg_eus(planning_msgs
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//Propt.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/planning_msgs
)
_generate_msg_eus(planning_msgs
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//PlanningDebug.msg"
  "${MSG_I_FLAGS}"
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/./StitchDebug.msg;/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/./ObstacleIn.msg;/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/./DecisionDebug.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/planning_msgs
)
_generate_msg_eus(planning_msgs
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//PredictionDebug.msg"
  "${MSG_I_FLAGS}"
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/./ObstaclePred.msg;/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/./GlobalObstacle.msg;/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/./Propt.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/planning_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(planning_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/planning_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(planning_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(planning_msgs_generate_messages planning_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//GlobalObstacle.msg" NAME_WE)
add_dependencies(planning_msgs_generate_messages_eus _planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//ObstacleIn.msg" NAME_WE)
add_dependencies(planning_msgs_generate_messages_eus _planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//ObstaclePred.msg" NAME_WE)
add_dependencies(planning_msgs_generate_messages_eus _planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//StitchDebug.msg" NAME_WE)
add_dependencies(planning_msgs_generate_messages_eus _planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//PathPoint.msg" NAME_WE)
add_dependencies(planning_msgs_generate_messages_eus _planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//DecisionDebug.msg" NAME_WE)
add_dependencies(planning_msgs_generate_messages_eus _planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//ADCTrajectory.msg" NAME_WE)
add_dependencies(planning_msgs_generate_messages_eus _planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//LatencyStats.msg" NAME_WE)
add_dependencies(planning_msgs_generate_messages_eus _planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//Propt.msg" NAME_WE)
add_dependencies(planning_msgs_generate_messages_eus _planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//PlanningDebug.msg" NAME_WE)
add_dependencies(planning_msgs_generate_messages_eus _planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//PredictionDebug.msg" NAME_WE)
add_dependencies(planning_msgs_generate_messages_eus _planning_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(planning_msgs_geneus)
add_dependencies(planning_msgs_geneus planning_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS planning_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(planning_msgs
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//GlobalObstacle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/planning_msgs
)
_generate_msg_lisp(planning_msgs
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//ObstacleIn.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/planning_msgs
)
_generate_msg_lisp(planning_msgs
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//ObstaclePred.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/planning_msgs
)
_generate_msg_lisp(planning_msgs
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//StitchDebug.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/planning_msgs
)
_generate_msg_lisp(planning_msgs
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//PathPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/planning_msgs
)
_generate_msg_lisp(planning_msgs
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//DecisionDebug.msg"
  "${MSG_I_FLAGS}"
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/./ObstacleIn.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/planning_msgs
)
_generate_msg_lisp(planning_msgs
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//ADCTrajectory.msg"
  "${MSG_I_FLAGS}"
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/./PredictionDebug.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/./ObstaclePred.msg;/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/./Propt.msg;/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/./PathPoint.msg;/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/./GlobalObstacle.msg;/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/./LatencyStats.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/planning_msgs
)
_generate_msg_lisp(planning_msgs
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//LatencyStats.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/planning_msgs
)
_generate_msg_lisp(planning_msgs
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//Propt.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/planning_msgs
)
_generate_msg_lisp(planning_msgs
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//PlanningDebug.msg"
  "${MSG_I_FLAGS}"
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/./StitchDebug.msg;/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/./ObstacleIn.msg;/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/./DecisionDebug.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/planning_msgs
)
_generate_msg_lisp(planning_msgs
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//PredictionDebug.msg"
  "${MSG_I_FLAGS}"
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/./ObstaclePred.msg;/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/./GlobalObstacle.msg;/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/./Propt.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/planning_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(planning_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/planning_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(planning_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(planning_msgs_generate_messages planning_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//GlobalObstacle.msg" NAME_WE)
add_dependencies(planning_msgs_generate_messages_lisp _planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//ObstacleIn.msg" NAME_WE)
add_dependencies(planning_msgs_generate_messages_lisp _planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//ObstaclePred.msg" NAME_WE)
add_dependencies(planning_msgs_generate_messages_lisp _planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//StitchDebug.msg" NAME_WE)
add_dependencies(planning_msgs_generate_messages_lisp _planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//PathPoint.msg" NAME_WE)
add_dependencies(planning_msgs_generate_messages_lisp _planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//DecisionDebug.msg" NAME_WE)
add_dependencies(planning_msgs_generate_messages_lisp _planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//ADCTrajectory.msg" NAME_WE)
add_dependencies(planning_msgs_generate_messages_lisp _planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//LatencyStats.msg" NAME_WE)
add_dependencies(planning_msgs_generate_messages_lisp _planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//Propt.msg" NAME_WE)
add_dependencies(planning_msgs_generate_messages_lisp _planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//PlanningDebug.msg" NAME_WE)
add_dependencies(planning_msgs_generate_messages_lisp _planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//PredictionDebug.msg" NAME_WE)
add_dependencies(planning_msgs_generate_messages_lisp _planning_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(planning_msgs_genlisp)
add_dependencies(planning_msgs_genlisp planning_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS planning_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(planning_msgs
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//GlobalObstacle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/planning_msgs
)
_generate_msg_nodejs(planning_msgs
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//ObstacleIn.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/planning_msgs
)
_generate_msg_nodejs(planning_msgs
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//ObstaclePred.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/planning_msgs
)
_generate_msg_nodejs(planning_msgs
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//StitchDebug.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/planning_msgs
)
_generate_msg_nodejs(planning_msgs
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//PathPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/planning_msgs
)
_generate_msg_nodejs(planning_msgs
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//DecisionDebug.msg"
  "${MSG_I_FLAGS}"
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/./ObstacleIn.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/planning_msgs
)
_generate_msg_nodejs(planning_msgs
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//ADCTrajectory.msg"
  "${MSG_I_FLAGS}"
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/./PredictionDebug.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/./ObstaclePred.msg;/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/./Propt.msg;/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/./PathPoint.msg;/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/./GlobalObstacle.msg;/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/./LatencyStats.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/planning_msgs
)
_generate_msg_nodejs(planning_msgs
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//LatencyStats.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/planning_msgs
)
_generate_msg_nodejs(planning_msgs
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//Propt.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/planning_msgs
)
_generate_msg_nodejs(planning_msgs
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//PlanningDebug.msg"
  "${MSG_I_FLAGS}"
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/./StitchDebug.msg;/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/./ObstacleIn.msg;/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/./DecisionDebug.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/planning_msgs
)
_generate_msg_nodejs(planning_msgs
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//PredictionDebug.msg"
  "${MSG_I_FLAGS}"
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/./ObstaclePred.msg;/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/./GlobalObstacle.msg;/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/./Propt.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/planning_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(planning_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/planning_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(planning_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(planning_msgs_generate_messages planning_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//GlobalObstacle.msg" NAME_WE)
add_dependencies(planning_msgs_generate_messages_nodejs _planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//ObstacleIn.msg" NAME_WE)
add_dependencies(planning_msgs_generate_messages_nodejs _planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//ObstaclePred.msg" NAME_WE)
add_dependencies(planning_msgs_generate_messages_nodejs _planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//StitchDebug.msg" NAME_WE)
add_dependencies(planning_msgs_generate_messages_nodejs _planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//PathPoint.msg" NAME_WE)
add_dependencies(planning_msgs_generate_messages_nodejs _planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//DecisionDebug.msg" NAME_WE)
add_dependencies(planning_msgs_generate_messages_nodejs _planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//ADCTrajectory.msg" NAME_WE)
add_dependencies(planning_msgs_generate_messages_nodejs _planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//LatencyStats.msg" NAME_WE)
add_dependencies(planning_msgs_generate_messages_nodejs _planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//Propt.msg" NAME_WE)
add_dependencies(planning_msgs_generate_messages_nodejs _planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//PlanningDebug.msg" NAME_WE)
add_dependencies(planning_msgs_generate_messages_nodejs _planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//PredictionDebug.msg" NAME_WE)
add_dependencies(planning_msgs_generate_messages_nodejs _planning_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(planning_msgs_gennodejs)
add_dependencies(planning_msgs_gennodejs planning_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS planning_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(planning_msgs
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//GlobalObstacle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/planning_msgs
)
_generate_msg_py(planning_msgs
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//ObstacleIn.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/planning_msgs
)
_generate_msg_py(planning_msgs
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//ObstaclePred.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/planning_msgs
)
_generate_msg_py(planning_msgs
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//StitchDebug.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/planning_msgs
)
_generate_msg_py(planning_msgs
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//PathPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/planning_msgs
)
_generate_msg_py(planning_msgs
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//DecisionDebug.msg"
  "${MSG_I_FLAGS}"
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/./ObstacleIn.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/planning_msgs
)
_generate_msg_py(planning_msgs
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//ADCTrajectory.msg"
  "${MSG_I_FLAGS}"
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/./PredictionDebug.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/./ObstaclePred.msg;/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/./Propt.msg;/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/./PathPoint.msg;/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/./GlobalObstacle.msg;/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/./LatencyStats.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/planning_msgs
)
_generate_msg_py(planning_msgs
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//LatencyStats.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/planning_msgs
)
_generate_msg_py(planning_msgs
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//Propt.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/planning_msgs
)
_generate_msg_py(planning_msgs
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//PlanningDebug.msg"
  "${MSG_I_FLAGS}"
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/./StitchDebug.msg;/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/./ObstacleIn.msg;/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/./DecisionDebug.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/planning_msgs
)
_generate_msg_py(planning_msgs
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//PredictionDebug.msg"
  "${MSG_I_FLAGS}"
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/./ObstaclePred.msg;/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/./GlobalObstacle.msg;/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/./Propt.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/planning_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(planning_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/planning_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(planning_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(planning_msgs_generate_messages planning_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//GlobalObstacle.msg" NAME_WE)
add_dependencies(planning_msgs_generate_messages_py _planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//ObstacleIn.msg" NAME_WE)
add_dependencies(planning_msgs_generate_messages_py _planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//ObstaclePred.msg" NAME_WE)
add_dependencies(planning_msgs_generate_messages_py _planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//StitchDebug.msg" NAME_WE)
add_dependencies(planning_msgs_generate_messages_py _planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//PathPoint.msg" NAME_WE)
add_dependencies(planning_msgs_generate_messages_py _planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//DecisionDebug.msg" NAME_WE)
add_dependencies(planning_msgs_generate_messages_py _planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//ADCTrajectory.msg" NAME_WE)
add_dependencies(planning_msgs_generate_messages_py _planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//LatencyStats.msg" NAME_WE)
add_dependencies(planning_msgs_generate_messages_py _planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//Propt.msg" NAME_WE)
add_dependencies(planning_msgs_generate_messages_py _planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//PlanningDebug.msg" NAME_WE)
add_dependencies(planning_msgs_generate_messages_py _planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/.//PredictionDebug.msg" NAME_WE)
add_dependencies(planning_msgs_generate_messages_py _planning_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(planning_msgs_genpy)
add_dependencies(planning_msgs_genpy planning_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS planning_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/planning_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/planning_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(planning_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(planning_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/planning_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/planning_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(planning_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(planning_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/planning_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/planning_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(planning_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(planning_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/planning_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/planning_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(planning_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(planning_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/planning_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/planning_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/planning_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(planning_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(planning_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
