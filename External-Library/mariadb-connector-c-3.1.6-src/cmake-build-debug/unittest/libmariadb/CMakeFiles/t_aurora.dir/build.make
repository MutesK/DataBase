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
include unittest/libmariadb/CMakeFiles/t_aurora.dir/depend.make

# Include the progress variables for this target.
include unittest/libmariadb/CMakeFiles/t_aurora.dir/progress.make

# Include the compile flags for this target's objects.
include unittest/libmariadb/CMakeFiles/t_aurora.dir/flags.make

unittest/libmariadb/CMakeFiles/t_aurora.dir/t_aurora.c.o: unittest/libmariadb/CMakeFiles/t_aurora.dir/flags.make
unittest/libmariadb/CMakeFiles/t_aurora.dir/t_aurora.c.o: ../unittest/libmariadb/t_aurora.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/junminkim/Workspace/DataBase/External-Library/mariadb-connector-c-3.1.6-src/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object unittest/libmariadb/CMakeFiles/t_aurora.dir/t_aurora.c.o"
	cd /Users/junminkim/Workspace/DataBase/External-Library/mariadb-connector-c-3.1.6-src/cmake-build-debug/unittest/libmariadb && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/t_aurora.dir/t_aurora.c.o   -c /Users/junminkim/Workspace/DataBase/External-Library/mariadb-connector-c-3.1.6-src/unittest/libmariadb/t_aurora.c

unittest/libmariadb/CMakeFiles/t_aurora.dir/t_aurora.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/t_aurora.dir/t_aurora.c.i"
	cd /Users/junminkim/Workspace/DataBase/External-Library/mariadb-connector-c-3.1.6-src/cmake-build-debug/unittest/libmariadb && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/junminkim/Workspace/DataBase/External-Library/mariadb-connector-c-3.1.6-src/unittest/libmariadb/t_aurora.c > CMakeFiles/t_aurora.dir/t_aurora.c.i

unittest/libmariadb/CMakeFiles/t_aurora.dir/t_aurora.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/t_aurora.dir/t_aurora.c.s"
	cd /Users/junminkim/Workspace/DataBase/External-Library/mariadb-connector-c-3.1.6-src/cmake-build-debug/unittest/libmariadb && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/junminkim/Workspace/DataBase/External-Library/mariadb-connector-c-3.1.6-src/unittest/libmariadb/t_aurora.c -o CMakeFiles/t_aurora.dir/t_aurora.c.s

# Object files for target t_aurora
t_aurora_OBJECTS = \
"CMakeFiles/t_aurora.dir/t_aurora.c.o"

# External object files for target t_aurora
t_aurora_EXTERNAL_OBJECTS =

unittest/libmariadb/t_aurora: unittest/libmariadb/CMakeFiles/t_aurora.dir/t_aurora.c.o
unittest/libmariadb/t_aurora: unittest/libmariadb/CMakeFiles/t_aurora.dir/build.make
unittest/libmariadb/t_aurora: unittest/mytap/libcctap.a
unittest/libmariadb/t_aurora: unittest/libmariadb/libma_getopt.a
unittest/libmariadb/t_aurora: libmariadb/libmariadbclient.a
unittest/libmariadb/t_aurora: /usr/lib/libiconv.dylib
unittest/libmariadb/t_aurora: /usr/local/lib/libssl.dylib
unittest/libmariadb/t_aurora: /usr/local/lib/libcrypto.dylib
unittest/libmariadb/t_aurora: unittest/libmariadb/CMakeFiles/t_aurora.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/junminkim/Workspace/DataBase/External-Library/mariadb-connector-c-3.1.6-src/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable t_aurora"
	cd /Users/junminkim/Workspace/DataBase/External-Library/mariadb-connector-c-3.1.6-src/cmake-build-debug/unittest/libmariadb && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/t_aurora.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
unittest/libmariadb/CMakeFiles/t_aurora.dir/build: unittest/libmariadb/t_aurora

.PHONY : unittest/libmariadb/CMakeFiles/t_aurora.dir/build

unittest/libmariadb/CMakeFiles/t_aurora.dir/clean:
	cd /Users/junminkim/Workspace/DataBase/External-Library/mariadb-connector-c-3.1.6-src/cmake-build-debug/unittest/libmariadb && $(CMAKE_COMMAND) -P CMakeFiles/t_aurora.dir/cmake_clean.cmake
.PHONY : unittest/libmariadb/CMakeFiles/t_aurora.dir/clean

unittest/libmariadb/CMakeFiles/t_aurora.dir/depend:
	cd /Users/junminkim/Workspace/DataBase/External-Library/mariadb-connector-c-3.1.6-src/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/junminkim/Workspace/DataBase/External-Library/mariadb-connector-c-3.1.6-src /Users/junminkim/Workspace/DataBase/External-Library/mariadb-connector-c-3.1.6-src/unittest/libmariadb /Users/junminkim/Workspace/DataBase/External-Library/mariadb-connector-c-3.1.6-src/cmake-build-debug /Users/junminkim/Workspace/DataBase/External-Library/mariadb-connector-c-3.1.6-src/cmake-build-debug/unittest/libmariadb /Users/junminkim/Workspace/DataBase/External-Library/mariadb-connector-c-3.1.6-src/cmake-build-debug/unittest/libmariadb/CMakeFiles/t_aurora.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : unittest/libmariadb/CMakeFiles/t_aurora.dir/depend

