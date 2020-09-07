cmake_minimum_required(VERSION 2.8.3)
project(locationsim_msgs)

## Compile as C++11
# add_compile_options(-std=c++11)

## messages dependenced on
set(MSG_DEPS
  std_msgs
)

## Find packages
find_package(catkin REQUIRED COMPONENTS message_generation ${MSG_DEPS})

################ Generate messages #################
add_message_files(
  DIRECTORY ./
  FILES
  LOCATIONSIM.msg
)

## Generate added messages with any dependencies listed here
generate_messages(
   DEPENDENCIES
   ${MSG_DEPS}
)

catkin_package(
  CATKIN_DEPENDS message_runtime ${MSG_DEPS}
)


