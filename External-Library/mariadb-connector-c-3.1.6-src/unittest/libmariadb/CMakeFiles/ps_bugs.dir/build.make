# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.16.4/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.16.4/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/junminkim/Workspace/DataBase/External-Library/mariadb-connector-c-3.1.6-src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/junminkim/Workspace/DataBase/External-Library/mariadb-connector-c-3.1.6-src

# Include any dependencies generated for this target.
include unittest/libmariadb/CMakeFiles/ps_bugs.dir/depend.make

# Include the progress variables for this target.
include unittest/libmariadb/CMakeFiles/ps_bugs.dir/progress.make

# Include the compile flags for this target's objects.
include unittest/libmariadb/CMakeFiles/ps_bugs.dir/flags.make

unittest/libmariadb/CMakeFiles/ps_bugs.dir/ps_bugs.c.o: unittest/libmariadb/CMakeFiles/ps_bugs.dir/flags.make
unittest/libmariadb/CMakeFiles/ps_bugs.dir/ps_bugs.c.o: unittest/libmariadb/ps_bugs.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/junminkim/Workspace/DataBase/External-Library/mariadb-connector-c-3.1.6-src/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object unittest/libmariadb/CMakeFiles/ps_bugs.dir/ps_bugs.c.o"
	cd /Users/junminkim/Workspace/DataBase/External-Library/mariadb-connector-c-3.1.6-src/unittest/libmariadb && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ps_bugs.dir/ps_bugs.c.o   -c /Users/junminkim/Workspace/DataBase/External-Library/mariadb-connector-c-3.1.6-src/unittest/libmariadb/ps_bugs.c

unittest/libmariadb/CMakeFiles/ps_bugs.dir/ps_bugs.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ps_bugs.dir/ps_bugs.c.i"
	cd /Users/junminkim/Workspace/DataBase/External-Library/mariadb-connector-c-3.1.6-src/unittest/libmariadb && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/junminkim/Workspace/DataBase/External-Library/mariadb-connector-c-3.1.6-src/unittest/libmariadb/ps_bugs.c > CMakeFiles/ps_bugs.dir/ps_bugs.c.i

unittest/libmariadb/CMakeFiles/ps_bugs.dir/ps_bugs.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ps_bugs.dir/ps_bugs.c.s"
	cd /Users/junminkim/Workspace/DataBase/External-Library/mariadb-connector-c-3.1.6-src/unittest/libmariadb && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/junminkim/Workspace/DataBase/External-Library/mariadb-connector-c-3.1.6-src/unittest/libmariadb/ps_bugs.c -o CMakeFiles/ps_bugs.dir/ps_bugs.c.s

# Object files for target ps_bugs
ps_bugs_OBJECTS = \
"CMakeFiles/ps_bugs.dir/ps_bugs.c.o"

# External object files for target ps_bugs
ps_bugs_EXTERNAL_OBJECTS =

unittest/libmariadb/ps_bugs: unittest/libmariadb/CMakeFiles/ps_bugs.dir/ps_bugs.c.o
unittest/libmariadb/ps_bugs: unittest/libmariadb/CMakeFiles/ps_bugs.dir/build.make
unittest/libmariadb/ps_bugs: unittest/mytap/libcctap.a
unittest/libmariadb/ps_bugs: unittest/libmariadb/libma_getopt.a
unittest/libmariadb/ps_bugs: libmariadb/libmariadbclient.a
unittest/libmariadb/ps_bugs: /usr/lib/libiconv.dylib
unittest/libmariadb/ps_bugs: /usr/local/lib/libssl.dylib
unittest/libmariadb/ps_bugs: /usr/local/lib/libcrypto.dylib
unittest/libmariadb/ps_bugs: unittest/libmariadb/CMakeFiles/ps_bugs.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/junminkim/Workspace/DataBase/External-Library/mariadb-connector-c-3.1.6-src/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable ps_bugs"
	cd /Users/junminkim/Workspace/DataBase/External-Library/mariadb-connector-c-3.1.6-src/unittest/libmariadb && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ps_bugs.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
unittest/libmariadb/CMakeFiles/ps_bugs.dir/build: unittest/libmariadb/ps_bugs

.PHONY : unittest/libmariadb/CMakeFiles/ps_bugs.dir/build

unittest/libmariadb/CMakeFiles/ps_bugs.dir/clean:
	cd /Users/junminkim/Workspace/DataBase/External-Library/mariadb-connector-c-3.1.6-src/unittest/libmariadb && $(CMAKE_COMMAND) -P CMakeFiles/ps_bugs.dir/cmake_clean.cmake
.PHONY : unittest/libmariadb/CMakeFiles/ps_bugs.dir/clean

unittest/libmariadb/CMakeFiles/ps_bugs.dir/depend:
	cd /Users/junminkim/Workspace/DataBase/External-Library/mariadb-connector-c-3.1.6-src && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/junminkim/Workspace/DataBase/External-Library/mariadb-connector-c-3.1.6-src /Users/junminkim/Workspace/DataBase/External-Library/mariadb-connector-c-3.1.6-src/unittest/libmariadb /Users/junminkim/Workspace/DataBase/External-Library/mariadb-connector-c-3.1.6-src /Users/junminkim/Workspace/DataBase/External-Library/mariadb-connector-c-3.1.6-src/unittest/libmariadb /Users/junminkim/Workspace/DataBase/External-Library/mariadb-connector-c-3.1.6-src/unittest/libmariadb/CMakeFiles/ps_bugs.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : unittest/libmariadb/CMakeFiles/ps_bugs.dir/depend

