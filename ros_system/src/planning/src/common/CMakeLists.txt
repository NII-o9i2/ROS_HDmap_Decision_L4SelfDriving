set(lib_name "planning_common_lib")

add_library(${lib_name} planning_gflags.cc)
#add_dependencies(${lib_name} )
target_link_libraries(${lib_name} 
                      ${catkin_LIBRARIES} gflags)
                      
install(TARGETS ${lib_name}
        LIBRARY DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION})
