cmake_minimum_required (VERSION 2.8)
set(lib_name "map_ytt_ehr_lib")
add_compile_options(-fPIC -std=c++11)
aux_source_directory(${CMAKE_CURRENT_SOURCE_DIR}	src_files)
set( CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -pthread")


find_package(Qt5 REQUIRED COMPONENTS Core)

add_library(${lib_name} STATIC	map_server.cc)

target_include_directories(
	${lib_name}
	PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/include
	PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/include/API
	PUBLIC ${Qt5Core_INCLUDE_DIRS}
)


target_link_libraries(
        ${lib_name}
	${CMAKE_CURRENT_SOURCE_DIR}/lib/libAPI.a
	${CMAKE_CURRENT_SOURCE_DIR}/lib/libMapEngine.a
	${CMAKE_CURRENT_SOURCE_DIR}/lib/libCommon.a
	${CMAKE_CURRENT_SOURCE_DIR}/lib/libzmq.a
	${CMAKE_CURRENT_SOURCE_DIR}/lib/libprotobuf.a
	${QT5Core_LIBRARIES}
	${catkin_LIBRARIES}
)



#target_link_libraries(${PROJECT_NAME} 
        #${catkin_LIBRARIES}
#	${CMAKE_CURRENT_SOURCE_DIR}/lib/libAPI.a
#	${CMAKE_CURRENT_SOURCE_DIR}/lib/libMapEngine.a
#	${CMAKE_CURRENT_SOURCE_DIR}/lib/libCommon.a
#	${CMAKE_CURRENT_SOURCE_DIR}/lib/libzmq.a
#	${CMAKE_CURRENT_SOURCE_DIR}/lib/libprotobuf.a
	#${CMAKE_CURRENT_SOURCE_DIR}/lib/libpthread.a
#	${QT_LINK_LIBRARIES}
#)


#install(TARGETS ${lib_name} 
        # LIBRARY DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
	#ARCHIVE DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
#)                     
