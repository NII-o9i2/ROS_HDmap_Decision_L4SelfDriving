# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "locationsim_msgs: 1 messages, 0 services")

set(MSG_I_FLAGS "-Ilocationsim_msgs:/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/ytthdmap/locationsim_msgs/./;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(locationsim_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/ytthdmap/locationsim_msgs/.//LOCATIONSIM.msg" NAME_WE)
add_custom_target(_locationsim_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "locationsim_msgs" "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/ytthdmap/locationsim_msgs/.//LOCATIONSIM.msg" "std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(locationsim_msgs
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/ytthdmap/locationsim_msgs/.//LOCATIONSIM.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/locationsim_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(locationsim_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/locationsim_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(locationsim_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(locationsim_msgs_generate_messages locationsim_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/ytthdmap/locationsim_msgs/.//LOCATIONSIM.msg" NAME_WE)
add_dependencies(locationsim_msgs_generate_messages_cpp _locationsim_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(locationsim_msgs_gencpp)
add_dependencies(locationsim_msgs_gencpp locationsim_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS locationsim_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(locationsim_msgs
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/ytthdmap/locationsim_msgs/.//LOCATIONSIM.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/locationsim_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(locationsim_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/locationsim_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(locationsim_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(locationsim_msgs_generate_messages locationsim_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/ytthdmap/locationsim_msgs/.//LOCATIONSIM.msg" NAME_WE)
add_dependencies(locationsim_msgs_generate_messages_eus _locationsim_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(locationsim_msgs_geneus)
add_dependencies(locationsim_msgs_geneus locationsim_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS locationsim_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(locationsim_msgs
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/ytthdmap/locationsim_msgs/.//LOCATIONSIM.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/locationsim_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(locationsim_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/locationsim_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(locationsim_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(locationsim_msgs_generate_messages locationsim_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/ytthdmap/locationsim_msgs/.//LOCATIONSIM.msg" NAME_WE)
add_dependencies(locationsim_msgs_generate_messages_lisp _locationsim_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(locationsim_msgs_genlisp)
add_dependencies(locationsim_msgs_genlisp locationsim_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS locationsim_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(locationsim_msgs
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/ytthdmap/locationsim_msgs/.//LOCATIONSIM.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/locationsim_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(locationsim_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/locationsim_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(locationsim_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(locationsim_msgs_generate_messages locationsim_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/ytthdmap/locationsim_msgs/.//LOCATIONSIM.msg" NAME_WE)
add_dependencies(locationsim_msgs_generate_messages_nodejs _locationsim_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(locationsim_msgs_gennodejs)
add_dependencies(locationsim_msgs_gennodejs locationsim_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS locationsim_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(locationsim_msgs
  "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/ytthdmap/locationsim_msgs/.//LOCATIONSIM.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/locationsim_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(locationsim_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/locationsim_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(locationsim_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(locationsim_msgs_generate_messages locationsim_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/ytthdmap/locationsim_msgs/.//LOCATIONSIM.msg" NAME_WE)
add_dependencies(locationsim_msgs_generate_messages_py _locationsim_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(locationsim_msgs_genpy)
add_dependencies(locationsim_msgs_genpy locationsim_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS locationsim_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/locationsim_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/locationsim_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(locationsim_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/locationsim_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/locationsim_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(locationsim_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/locationsim_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/locationsim_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(locationsim_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/locationsim_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/locationsim_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(locationsim_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/locationsim_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/locationsim_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/locationsim_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(locationsim_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
