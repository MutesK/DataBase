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
include unittest/libmariadb/CMakeFiles/ma_getopt.dir/depend.make

# Include the progress variables for this target.
include unittest/libmariadb/CMakeFiles/ma_getopt.dir/progress.make

# Include the compile flags for this target's objects.
include unittest/libmariadb/CMakeFiles/ma_getopt.dir/flags.make

unittest/libmariadb/CMakeFiles/ma_getopt.dir/ma_getopt.c.o: unittest/libmariadb/CMakeFiles/ma_getopt.dir/flags.make
unittest/libmariadb/CMakeFiles/ma_getopt.dir/ma_getopt.c.o: ../unittest/libmariadb/ma_getopt.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/junminkim/Workspace/DataBase/External-Library/mariadb-connector-c-3.1.6-src/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object unittest/libmariadb/CMakeFiles/ma_getopt.dir/ma_getopt.c.o"
	cd /Users/junminkim/Workspace/DataBase/External-Library/mariadb-connector-c-3.1.6-src/cmake-build-debug/unittest/libmariadb && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ma_getopt.dir/ma_getopt.c.o   -c /Users/junminkim/Workspace/DataBase/External-Library/mariadb-connector-c-3.1.6-src/unittest/libmariadb/ma_getopt.c

unittest/libmariadb/CMakeFiles/ma_getopt.dir/ma_getopt.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ma_getopt.dir/ma_getopt.c.i"
	cd /Users/junminkim/Workspace/DataBase/External-Library/mariadb-connector-c-3.1.6-src/cmake-build-debug/unittest/libmariadb && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/junminkim/Workspace/DataBase/External-Library/mariadb-connector-c-3.1.6-src/unittest/libmariadb/ma_getopt.c > CMakeFiles/ma_getopt.dir/ma_getopt.c.i

unittest/libmariadb/CMakeFiles/ma_getopt.dir/ma_getopt.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ma_getopt.dir/ma_getopt.c.s"
	cd /Users/junminkim/Workspace/DataBase/External-Library/mariadb-connector-c-3.1.6-src/cmake-build-debug/unittest/libmariadb && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/junminkim/Workspace/DataBase/External-Library/mariadb-connector-c-3.1.6-src/unittest/libmariadb/ma_getopt.c -o CMakeFiles/ma_getopt.dir/ma_getopt.c.s

# Object files for target ma_getopt
ma_getopt_OBJECTS = \
"CMakeFiles/ma_getopt.dir/ma_getopt.c.o"

# External object files for target ma_getopt
ma_getopt_EXTERNAL_OBJECTS =

unittest/libmariadb/libma_getopt.a: unittest/libmariadb/CMakeFiles/ma_getopt.dir/ma_getopt.c.o
unittest/libmariadb/libma_getopt.a: unittest/libmariadb/CMakeFiles/ma_getopt.dir/build.make
unittest/libmariadb/libma_getopt.a: unittest/libmariadb/CMakeFiles/ma_getopt.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/junminkim/Workspace/DataBase/External-Library/mariadb-connector-c-3.1.6-src/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C static library libma_getopt.a"
	cd /Users/junminkim/Workspace/DataBase/External-Library/mariadb-connector-c-3.1.6-src/cmake-build-debug/unittest/libmariadb && $(CMAKE_COMMAND) -P CMakeFiles/ma_getopt.dir/cmake_clean_target.cmake
	cd /Users/junminkim/Workspace/DataBase/External-Library/mariadb-connector-c-3.1.6-src/cmake-build-debug/unittest/libmariadb && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ma_getopt.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
unittest/libmariadb/CMakeFiles/ma_getopt.dir/build: unittest/libmariadb/libma_getopt.a

.PHONY : unittest/libmariadb/CMakeFiles/ma_getopt.dir/build

unittest/libmariadb/CMakeFiles/ma_getopt.dir/clean:
	cd /Users/junminkim/Workspace/DataBase/External-Library/mariadb-connector-c-3.1.6-src/cmake-build-debug/unittest/libmariadb && $(CMAKE_COMMAND) -P CMakeFiles/ma_getopt.dir/cmake_clean.cmake
.PHONY : unittest/libmariadb/CMakeFiles/ma_getopt.dir/clean

unittest/libmariadb/CMakeFiles/ma_getopt.dir/depend:
	cd /Users/junminkim/Workspace/DataBase/External-Library/mariadb-connector-c-3.1.6-src/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/junminkim/Workspace/DataBase/External-Library/mariadb-connector-c-3.1.6-src /Users/junminkim/Workspace/DataBase/External-Library/mariadb-connector-c-3.1.6-src/unittest/libmariadb /Users/junminkim/Workspace/DataBase/External-Library/mariadb-connector-c-3.1.6-src/cmake-build-debug /Users/junminkim/Workspace/DataBase/External-Library/mariadb-connector-c-3.1.6-src/cmake-build-debug/unittest/libmariadb /Users/junminkim/Workspace/DataBase/External-Library/mariadb-connector-c-3.1.6-src/cmake-build-debug/unittest/libmariadb/CMakeFiles/ma_getopt.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : unittest/libmariadb/CMakeFiles/ma_getopt.dir/depend

