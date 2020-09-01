cmake_minimum_required(VERSION 2.8.3)
project(ytthdmap)

set( CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -pthread")
## Compile as C++11
add_compile_options(-std=c++11)

## packages and libraries dependenced on
set(${PROJECT_NAME}_PKG_DEPS
	roscpp
	ytthdmap_msgs
)

## ADD dependency
set(${PROJECT_NAME}_LIBS_DEPS
	map_ytt_ehr_lib
)

## Find packages
find_package(catkin REQUIRED COMPONENTS ${${PROJECT_NAME}_PKG_DEPS})

################## catkin specific configuration ##################
catkin_package(CATKIN_DEPENDS 
	${${PROJECT_NAME}_PKG_DEPS}
) 

################### BUILD ###################
include_directories( 
	${catkin_INCLUDE_DIRS}
	${CMAKE_CURRENT_SOURCE_DIR}
  	${CMAKE_SOURCE_DIR} 
	${CMAKE_CURRENT_SOURCE_DIR}/yttmap_ehr/include
	${CMAKE_CURRENT_SOURCE_DIR}/yttmap_ehr/include/API
) 

add_subdirectory(yttmap_ehr)

## ADD target file
add_executable(${PROJECT_NAME} hdmapYtt.cc)


# compile the executable 
target_link_libraries(${PROJECT_NAME}
	map_ytt_ehr_lib
	${catkin_LIBRARIES} 
	${${PROJECT_NAME}_LIBS_DEPS}
)

install(TARGETS ${PROJECT_NAME}
  ARCHIVE DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
  LIBRARY DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
  RUNTIME DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)

