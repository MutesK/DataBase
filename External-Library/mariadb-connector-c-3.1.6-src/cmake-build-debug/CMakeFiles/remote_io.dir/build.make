# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.15

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/junminkim/Workspace/DataBase/External-Library/mariadb-connector-c-3.1.6-src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/junminkim/Workspace/DataBase/External-Library/mariadb-connector-c-3.1.6-src/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/remote_io.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/remote_io.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/remote_io.dir/flags.make

CMakeFiles/remote_io.dir/plugins/io/remote_io.c.o: CMakeFiles/remote_io.dir/flags.make
CMakeFiles/remote_io.dir/plugins/io/remote_io.c.o: ../plugins/io/remote_io.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/junminkim/Workspace/DataBase/External-Library/mariadb-connector-c-3.1.6-src/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/remote_io.dir/plugins/io/remote_io.c.o"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -DPLUGIN_DYNAMIC=1  -o CMakeFiles/remote_io.dir/plugins/io/remote_io.c.o   -c /Users/junminkim/Workspace/DataBase/External-Library/mariadb-connector-c-3.1.6-src/plugins/io/remote_io.c

CMakeFiles/remote_io.dir/plugins/io/remote_io.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/remote_io.dir/plugins/io/remote_io.c.i"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -DPLUGIN_DYNAMIC=1  -E /Users/junminkim/Workspace/DataBase/External-Library/mariadb-connector-c-3.1.6-src/plugins/io/remote_io.c > CMakeFiles/remote_io.dir/plugins/io/remote_io.c.i

CMakeFiles/remote_io.dir/plugins/io/remote_io.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/remote_io.dir/plugins/io/remote_io.c.s"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -DPLUGIN_DYNAMIC=1  -S /Users/junminkim/Workspace/DataBase/External-Library/mariadb-connector-c-3.1.6-src/plugins/io/remote_io.c -o CMakeFiles/remote_io.dir/plugins/io/remote_io.c.s

# Object files for target remote_io
remote_io_OBJECTS = \
"CMakeFiles/remote_io.dir/plugins/io/remote_io.c.o"

# External object files for target remote_io
remote_io_EXTERNAL_OBJECTS =

remote_io.so: CMakeFiles/remote_io.dir/plugins/io/remote_io.c.o
remote_io.so: CMakeFiles/remote_io.dir/build.make
remote_io.so: /usr/lib/libcurl.dylib
remote_io.so: CMakeFiles/remote_io.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/junminkim/Workspace/DataBase/External-Library/mariadb-connector-c-3.1.6-src/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C shared module remote_io.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/remote_io.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/remote_io.dir/build: remote_io.so

.PHONY : CMakeFiles/remote_io.dir/build

CMakeFiles/remote_io.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/remote_io.dir/cmake_clean.cmake
.PHONY : CMakeFiles/remote_io.dir/clean

CMakeFiles/remote_io.dir/depend:
	cd /Users/junminkim/Workspace/DataBase/External-Library/mariadb-connector-c-3.1.6-src/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/junminkim/Workspace/DataBase/External-Library/mariadb-connector-c-3.1.6-src /Users/junminkim/Workspace/DataBase/External-Library/mariadb-connector-c-3.1.6-src /Users/junminkim/Workspace/DataBase/External-Library/mariadb-connector-c-3.1.6-src/cmake-build-debug /Users/junminkim/Workspace/DataBase/External-Library/mariadb-connector-c-3.1.6-src/cmake-build-debug /Users/junminkim/Workspace/DataBase/External-Library/mariadb-connector-c-3.1.6-src/cmake-build-debug/CMakeFiles/remote_io.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/remote_io.dir/depend
