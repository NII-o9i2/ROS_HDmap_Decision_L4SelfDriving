# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/xiaotongfeng/ros_test/src/ytthdmap/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/xiaotongfeng/ros_test/src/ytthdmap/src/BUILD

# Include any dependencies generated for this target.
include CMakeFiles/ytthdmap.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/ytthdmap.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ytthdmap.dir/flags.make

CMakeFiles/ytthdmap.dir/main.cc.o: CMakeFiles/ytthdmap.dir/flags.make
CMakeFiles/ytthdmap.dir/main.cc.o: ../main.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/xiaotongfeng/ros_test/src/ytthdmap/src/BUILD/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/ytthdmap.dir/main.cc.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ytthdmap.dir/main.cc.o -c /home/xiaotongfeng/ros_test/src/ytthdmap/src/main.cc

CMakeFiles/ytthdmap.dir/main.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ytthdmap.dir/main.cc.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/xiaotongfeng/ros_test/src/ytthdmap/src/main.cc > CMakeFiles/ytthdmap.dir/main.cc.i

CMakeFiles/ytthdmap.dir/main.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ytthdmap.dir/main.cc.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/xiaotongfeng/ros_test/src/ytthdmap/src/main.cc -o CMakeFiles/ytthdmap.dir/main.cc.s

CMakeFiles/ytthdmap.dir/main.cc.o.requires:

.PHONY : CMakeFiles/ytthdmap.dir/main.cc.o.requires

CMakeFiles/ytthdmap.dir/main.cc.o.provides: CMakeFiles/ytthdmap.dir/main.cc.o.requires
	$(MAKE) -f CMakeFiles/ytthdmap.dir/build.make CMakeFiles/ytthdmap.dir/main.cc.o.provides.build
.PHONY : CMakeFiles/ytthdmap.dir/main.cc.o.provides

CMakeFiles/ytthdmap.dir/main.cc.o.provides.build: CMakeFiles/ytthdmap.dir/main.cc.o


# Object files for target ytthdmap
ytthdmap_OBJECTS = \
"CMakeFiles/ytthdmap.dir/main.cc.o"

# External object files for target ytthdmap
ytthdmap_EXTERNAL_OBJECTS =

ytthdmap: CMakeFiles/ytthdmap.dir/main.cc.o
ytthdmap: CMakeFiles/ytthdmap.dir/build.make
ytthdmap: test_ehr/libmapserver_ehr.a
ytthdmap: ../test_ehr/lib/libAPI.a
ytthdmap: ../test_ehr/lib/libCommon.a
ytthdmap: ../test_ehr/lib/libMapEngine.a
ytthdmap: ../test_ehr/lib/libprotobuf.a
ytthdmap: ../test_ehr/lib/libzmq.a
ytthdmap: /usr/lib/x86_64-linux-gnu/libQt5PrintSupport.so.5.5.1
ytthdmap: /usr/lib/x86_64-linux-gnu/libQt5Xml.so.5.5.1
ytthdmap: /usr/lib/x86_64-linux-gnu/libQt5Concurrent.so.5.5.1
ytthdmap: /usr/lib/x86_64-linux-gnu/libQt5MultimediaWidgets.so.5.5.1
ytthdmap: /usr/lib/x86_64-linux-gnu/libQt5Multimedia.so.5.5.1
ytthdmap: /usr/lib/x86_64-linux-gnu/libQt5Qml.so.5.5.1
ytthdmap: /usr/lib/x86_64-linux-gnu/libQt5Network.so.5.5.1
ytthdmap: /usr/lib/x86_64-linux-gnu/libQt5Svg.so.5.5.1
ytthdmap: /usr/lib/x86_64-linux-gnu/libQt5Widgets.so.5.5.1
ytthdmap: /usr/lib/x86_64-linux-gnu/libQt5Gui.so.5.5.1
ytthdmap: /usr/lib/x86_64-linux-gnu/libQt5Core.so.5.5.1
ytthdmap: CMakeFiles/ytthdmap.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/xiaotongfeng/ros_test/src/ytthdmap/src/BUILD/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ytthdmap"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ytthdmap.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ytthdmap.dir/build: ytthdmap

.PHONY : CMakeFiles/ytthdmap.dir/build

CMakeFiles/ytthdmap.dir/requires: CMakeFiles/ytthdmap.dir/main.cc.o.requires

.PHONY : CMakeFiles/ytthdmap.dir/requires

CMakeFiles/ytthdmap.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ytthdmap.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ytthdmap.dir/clean

CMakeFiles/ytthdmap.dir/depend:
	cd /home/xiaotongfeng/ros_test/src/ytthdmap/src/BUILD && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/xiaotongfeng/ros_test/src/ytthdmap/src /home/xiaotongfeng/ros_test/src/ytthdmap/src /home/xiaotongfeng/ros_test/src/ytthdmap/src/BUILD /home/xiaotongfeng/ros_test/src/ytthdmap/src/BUILD /home/xiaotongfeng/ros_test/src/ytthdmap/src/BUILD/CMakeFiles/ytthdmap.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ytthdmap.dir/depend
