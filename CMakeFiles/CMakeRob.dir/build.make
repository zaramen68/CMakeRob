# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_SOURCE_DIR = /home/mik/CMakeRob

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/mik/CMakeRob

# Include any dependencies generated for this target.
include CMakeFiles/CMakeRob.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/CMakeRob.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/CMakeRob.dir/flags.make

CMakeFiles/CMakeRob.dir/CMakeRob.cpp.o: CMakeFiles/CMakeRob.dir/flags.make
CMakeFiles/CMakeRob.dir/CMakeRob.cpp.o: CMakeRob.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mik/CMakeRob/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/CMakeRob.dir/CMakeRob.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/CMakeRob.dir/CMakeRob.cpp.o -c /home/mik/CMakeRob/CMakeRob.cpp

CMakeFiles/CMakeRob.dir/CMakeRob.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CMakeRob.dir/CMakeRob.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mik/CMakeRob/CMakeRob.cpp > CMakeFiles/CMakeRob.dir/CMakeRob.cpp.i

CMakeFiles/CMakeRob.dir/CMakeRob.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CMakeRob.dir/CMakeRob.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mik/CMakeRob/CMakeRob.cpp -o CMakeFiles/CMakeRob.dir/CMakeRob.cpp.s

CMakeFiles/CMakeRob.dir/CMakeRob.cpp.o.requires:

.PHONY : CMakeFiles/CMakeRob.dir/CMakeRob.cpp.o.requires

CMakeFiles/CMakeRob.dir/CMakeRob.cpp.o.provides: CMakeFiles/CMakeRob.dir/CMakeRob.cpp.o.requires
	$(MAKE) -f CMakeFiles/CMakeRob.dir/build.make CMakeFiles/CMakeRob.dir/CMakeRob.cpp.o.provides.build
.PHONY : CMakeFiles/CMakeRob.dir/CMakeRob.cpp.o.provides

CMakeFiles/CMakeRob.dir/CMakeRob.cpp.o.provides.build: CMakeFiles/CMakeRob.dir/CMakeRob.cpp.o


# Object files for target CMakeRob
CMakeRob_OBJECTS = \
"CMakeFiles/CMakeRob.dir/CMakeRob.cpp.o"

# External object files for target CMakeRob
CMakeRob_EXTERNAL_OBJECTS =

CMakeRob: CMakeFiles/CMakeRob.dir/CMakeRob.cpp.o
CMakeRob: CMakeFiles/CMakeRob.dir/build.make
CMakeRob: CMakeFiles/CMakeRob.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/mik/CMakeRob/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable CMakeRob"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/CMakeRob.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/CMakeRob.dir/build: CMakeRob

.PHONY : CMakeFiles/CMakeRob.dir/build

CMakeFiles/CMakeRob.dir/requires: CMakeFiles/CMakeRob.dir/CMakeRob.cpp.o.requires

.PHONY : CMakeFiles/CMakeRob.dir/requires

CMakeFiles/CMakeRob.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/CMakeRob.dir/cmake_clean.cmake
.PHONY : CMakeFiles/CMakeRob.dir/clean

CMakeFiles/CMakeRob.dir/depend:
	cd /home/mik/CMakeRob && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/mik/CMakeRob /home/mik/CMakeRob /home/mik/CMakeRob /home/mik/CMakeRob /home/mik/CMakeRob/CMakeFiles/CMakeRob.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/CMakeRob.dir/depend

