# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.14

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
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/capnproto-c++-0.7.0

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/RPiBuild

# Include any dependencies generated for this target.
include src/capnp/CMakeFiles/capnp-json.dir/depend.make

# Include the progress variables for this target.
include src/capnp/CMakeFiles/capnp-json.dir/progress.make

# Include the compile flags for this target's objects.
include src/capnp/CMakeFiles/capnp-json.dir/flags.make

src/capnp/CMakeFiles/capnp-json.dir/compat/json.c++.o: src/capnp/CMakeFiles/capnp-json.dir/flags.make
src/capnp/CMakeFiles/capnp-json.dir/compat/json.c++.o: /media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/capnproto-c++-0.7.0/src/capnp/compat/json.c++
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/RPiBuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/capnp/CMakeFiles/capnp-json.dir/compat/json.c++.o"
	cd /media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/RPiBuild/src/capnp && /media/constantine/Work/BOARDS/RASPBERRY/tools-master/arm-bcm2708/arm-linux-gnueabihf/bin/arm-linux-gnueabihf-g++ --sysroot=/media/constantine/Work/BOARDS/RASPBERRY/tools-master/arm-bcm2708/arm-linux-gnueabihf/arm-linux-gnueabihf/sysroot  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/capnp-json.dir/compat/json.c++.o -c /media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/capnproto-c++-0.7.0/src/capnp/compat/json.c++

src/capnp/CMakeFiles/capnp-json.dir/compat/json.c++.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/capnp-json.dir/compat/json.c++.i"
	cd /media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/RPiBuild/src/capnp && /media/constantine/Work/BOARDS/RASPBERRY/tools-master/arm-bcm2708/arm-linux-gnueabihf/bin/arm-linux-gnueabihf-g++ --sysroot=/media/constantine/Work/BOARDS/RASPBERRY/tools-master/arm-bcm2708/arm-linux-gnueabihf/arm-linux-gnueabihf/sysroot $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/capnproto-c++-0.7.0/src/capnp/compat/json.c++ > CMakeFiles/capnp-json.dir/compat/json.c++.i

src/capnp/CMakeFiles/capnp-json.dir/compat/json.c++.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/capnp-json.dir/compat/json.c++.s"
	cd /media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/RPiBuild/src/capnp && /media/constantine/Work/BOARDS/RASPBERRY/tools-master/arm-bcm2708/arm-linux-gnueabihf/bin/arm-linux-gnueabihf-g++ --sysroot=/media/constantine/Work/BOARDS/RASPBERRY/tools-master/arm-bcm2708/arm-linux-gnueabihf/arm-linux-gnueabihf/sysroot $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/capnproto-c++-0.7.0/src/capnp/compat/json.c++ -o CMakeFiles/capnp-json.dir/compat/json.c++.s

src/capnp/CMakeFiles/capnp-json.dir/compat/json.capnp.c++.o: src/capnp/CMakeFiles/capnp-json.dir/flags.make
src/capnp/CMakeFiles/capnp-json.dir/compat/json.capnp.c++.o: /media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/capnproto-c++-0.7.0/src/capnp/compat/json.capnp.c++
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/RPiBuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/capnp/CMakeFiles/capnp-json.dir/compat/json.capnp.c++.o"
	cd /media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/RPiBuild/src/capnp && /media/constantine/Work/BOARDS/RASPBERRY/tools-master/arm-bcm2708/arm-linux-gnueabihf/bin/arm-linux-gnueabihf-g++ --sysroot=/media/constantine/Work/BOARDS/RASPBERRY/tools-master/arm-bcm2708/arm-linux-gnueabihf/arm-linux-gnueabihf/sysroot  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/capnp-json.dir/compat/json.capnp.c++.o -c /media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/capnproto-c++-0.7.0/src/capnp/compat/json.capnp.c++

src/capnp/CMakeFiles/capnp-json.dir/compat/json.capnp.c++.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/capnp-json.dir/compat/json.capnp.c++.i"
	cd /media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/RPiBuild/src/capnp && /media/constantine/Work/BOARDS/RASPBERRY/tools-master/arm-bcm2708/arm-linux-gnueabihf/bin/arm-linux-gnueabihf-g++ --sysroot=/media/constantine/Work/BOARDS/RASPBERRY/tools-master/arm-bcm2708/arm-linux-gnueabihf/arm-linux-gnueabihf/sysroot $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/capnproto-c++-0.7.0/src/capnp/compat/json.capnp.c++ > CMakeFiles/capnp-json.dir/compat/json.capnp.c++.i

src/capnp/CMakeFiles/capnp-json.dir/compat/json.capnp.c++.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/capnp-json.dir/compat/json.capnp.c++.s"
	cd /media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/RPiBuild/src/capnp && /media/constantine/Work/BOARDS/RASPBERRY/tools-master/arm-bcm2708/arm-linux-gnueabihf/bin/arm-linux-gnueabihf-g++ --sysroot=/media/constantine/Work/BOARDS/RASPBERRY/tools-master/arm-bcm2708/arm-linux-gnueabihf/arm-linux-gnueabihf/sysroot $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/capnproto-c++-0.7.0/src/capnp/compat/json.capnp.c++ -o CMakeFiles/capnp-json.dir/compat/json.capnp.c++.s

# Object files for target capnp-json
capnp__json_OBJECTS = \
"CMakeFiles/capnp-json.dir/compat/json.c++.o" \
"CMakeFiles/capnp-json.dir/compat/json.capnp.c++.o"

# External object files for target capnp-json
capnp__json_EXTERNAL_OBJECTS =

src/capnp/libcapnp-json.a: src/capnp/CMakeFiles/capnp-json.dir/compat/json.c++.o
src/capnp/libcapnp-json.a: src/capnp/CMakeFiles/capnp-json.dir/compat/json.capnp.c++.o
src/capnp/libcapnp-json.a: src/capnp/CMakeFiles/capnp-json.dir/build.make
src/capnp/libcapnp-json.a: src/capnp/CMakeFiles/capnp-json.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/RPiBuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX static library libcapnp-json.a"
	cd /media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/RPiBuild/src/capnp && $(CMAKE_COMMAND) -P CMakeFiles/capnp-json.dir/cmake_clean_target.cmake
	cd /media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/RPiBuild/src/capnp && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/capnp-json.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/capnp/CMakeFiles/capnp-json.dir/build: src/capnp/libcapnp-json.a

.PHONY : src/capnp/CMakeFiles/capnp-json.dir/build

src/capnp/CMakeFiles/capnp-json.dir/clean:
	cd /media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/RPiBuild/src/capnp && $(CMAKE_COMMAND) -P CMakeFiles/capnp-json.dir/cmake_clean.cmake
.PHONY : src/capnp/CMakeFiles/capnp-json.dir/clean

src/capnp/CMakeFiles/capnp-json.dir/depend:
	cd /media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/RPiBuild && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/capnproto-c++-0.7.0 /media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/capnproto-c++-0.7.0/src/capnp /media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/RPiBuild /media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/RPiBuild/src/capnp /media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/RPiBuild/src/capnp/CMakeFiles/capnp-json.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/capnp/CMakeFiles/capnp-json.dir/depend
