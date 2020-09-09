cmake_minimum_required(VERSION 2.8.3)
project(planning)

## Compile as C++11
add_compile_options(-std=c++11)

## packages and libraries dependenced on
set(${PROJECT_NAME}_PKG_DEPS
  roscpp
  planning_msgs
  ytthdmap_msgs
  locationsim_msgs
)

set(${PROJECT_NAME}_LIBS_DEPS
  planner_std_lib
)
  
## Find packages
find_package(catkin REQUIRED COMPONENTS ${${PROJECT_NAME}_PKG_DEPS})
find_package(Protobuf REQUIRED) 

################## catkin specific configuration ##################
catkin_package(CATKIN_DEPENDS 
	${${PROJECT_NAME}_PKG_DEPS}
) 


################### BUILD ###################
include_directories( 
	${catkin_INCLUDE_DIRS}
	${CMAKE_SOURCE_DIR}
	${CMAKE_CURRENT_SOURCE_DIR}
) 

# compile inner library
add_subdirectory(std_planner)

# compile the executable 
add_executable(${PROJECT_NAME}
  main.cc
)
add_dependencies(${PROJECT_NAME} planning_msgs_generate_messages_cpp)
target_link_libraries(${PROJECT_NAME} ${catkin_LIBRARIES} ${${PROJECT_NAME}_LIBS_DEPS})

#################### INSTALL ###################
install(TARGETS ${PROJECT_NAME}
  ARCHIVE DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
  LIBRARY DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
  RUNTIME DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)


