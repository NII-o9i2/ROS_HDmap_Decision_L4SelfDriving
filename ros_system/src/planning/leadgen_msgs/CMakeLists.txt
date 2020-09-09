cmake_minimum_required(VERSION 2.8.3)
project(leadgen_msgs)

find_package(catkin REQUIRED COMPONENTS message_generation std_msgs geometry_msgs)

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

generate_messages(DEPENDENCIES std_msgs geometry_msgs)

catkin_package(
  CATKIN_DEPENDS message_runtime std_msgs geometry_msgs
)
