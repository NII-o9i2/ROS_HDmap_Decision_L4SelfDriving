cmake_minimum_required(VERSION 2.8.3)
project(planning_msgs)

## Compile as C++11
# add_compile_options(-std=c++11)

## messages dependenced on
set(MSG_DEPS
  std_msgs
  geometry_msgs
  #hmi_msgs
)

## Find packages
find_package(catkin REQUIRED COMPONENTS message_generation  ${MSG_DEPS})

################ Generate messages #################
file(GLOB msg_files ./*.msg)
set(msg_file_list "")
foreach(msg_file ${msg_files}) 
  get_filename_component(file_name ${msg_file} NAME_WE)
  list(APPEND msg_file_list ${file_name}.msg)   
endforeach(msg_file ${msg_files}) 

add_message_files(
  DIRECTORY ./
  FILES
  ${msg_file_list}
)

## Generate added messages with any dependencies listed here
generate_messages(
   DEPENDENCIES
    ${MSG_DEPS}
)

catkin_package(
  CATKIN_DEPENDS message_runtime  ${MSG_DEPS}
)


