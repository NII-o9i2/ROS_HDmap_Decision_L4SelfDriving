set(lib_name "planner_std_lib")

file(GLOB core_cpp_files core/*.cpp)
add_library(${lib_name} std_planner.cc ${core_cpp_files})
add_dependencies(${lib_name} planning_msgs_generate_messages_cpp
                             control_msgs_generate_messages_cpp)
target_link_libraries(${lib_name} 
                      ${catkin_LIBRARIES}
                      )
install(TARGETS ${lib_name}
        LIBRARY DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION})                     
