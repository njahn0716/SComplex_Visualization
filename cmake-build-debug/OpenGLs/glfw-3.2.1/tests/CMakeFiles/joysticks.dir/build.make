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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/NamjoAhn/ClionProjects/SComplex_Visualization

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/NamjoAhn/ClionProjects/SComplex_Visualization/cmake-build-debug

# Include any dependencies generated for this target.
include OpenGLs/glfw-3.2.1/tests/CMakeFiles/joysticks.dir/depend.make

# Include the progress variables for this target.
include OpenGLs/glfw-3.2.1/tests/CMakeFiles/joysticks.dir/progress.make

# Include the compile flags for this target's objects.
include OpenGLs/glfw-3.2.1/tests/CMakeFiles/joysticks.dir/flags.make

OpenGLs/glfw-3.2.1/tests/CMakeFiles/joysticks.dir/joysticks.c.o: OpenGLs/glfw-3.2.1/tests/CMakeFiles/joysticks.dir/flags.make
OpenGLs/glfw-3.2.1/tests/CMakeFiles/joysticks.dir/joysticks.c.o: ../OpenGLs/glfw-3.2.1/tests/joysticks.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/NamjoAhn/ClionProjects/SComplex_Visualization/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object OpenGLs/glfw-3.2.1/tests/CMakeFiles/joysticks.dir/joysticks.c.o"
	cd /Users/NamjoAhn/ClionProjects/SComplex_Visualization/cmake-build-debug/OpenGLs/glfw-3.2.1/tests && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/joysticks.dir/joysticks.c.o   -c /Users/NamjoAhn/ClionProjects/SComplex_Visualization/OpenGLs/glfw-3.2.1/tests/joysticks.c

OpenGLs/glfw-3.2.1/tests/CMakeFiles/joysticks.dir/joysticks.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/joysticks.dir/joysticks.c.i"
	cd /Users/NamjoAhn/ClionProjects/SComplex_Visualization/cmake-build-debug/OpenGLs/glfw-3.2.1/tests && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/NamjoAhn/ClionProjects/SComplex_Visualization/OpenGLs/glfw-3.2.1/tests/joysticks.c > CMakeFiles/joysticks.dir/joysticks.c.i

OpenGLs/glfw-3.2.1/tests/CMakeFiles/joysticks.dir/joysticks.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/joysticks.dir/joysticks.c.s"
	cd /Users/NamjoAhn/ClionProjects/SComplex_Visualization/cmake-build-debug/OpenGLs/glfw-3.2.1/tests && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/NamjoAhn/ClionProjects/SComplex_Visualization/OpenGLs/glfw-3.2.1/tests/joysticks.c -o CMakeFiles/joysticks.dir/joysticks.c.s

OpenGLs/glfw-3.2.1/tests/CMakeFiles/joysticks.dir/joysticks.c.o.requires:

.PHONY : OpenGLs/glfw-3.2.1/tests/CMakeFiles/joysticks.dir/joysticks.c.o.requires

OpenGLs/glfw-3.2.1/tests/CMakeFiles/joysticks.dir/joysticks.c.o.provides: OpenGLs/glfw-3.2.1/tests/CMakeFiles/joysticks.dir/joysticks.c.o.requires
	$(MAKE) -f OpenGLs/glfw-3.2.1/tests/CMakeFiles/joysticks.dir/build.make OpenGLs/glfw-3.2.1/tests/CMakeFiles/joysticks.dir/joysticks.c.o.provides.build
.PHONY : OpenGLs/glfw-3.2.1/tests/CMakeFiles/joysticks.dir/joysticks.c.o.provides

OpenGLs/glfw-3.2.1/tests/CMakeFiles/joysticks.dir/joysticks.c.o.provides.build: OpenGLs/glfw-3.2.1/tests/CMakeFiles/joysticks.dir/joysticks.c.o


OpenGLs/glfw-3.2.1/tests/CMakeFiles/joysticks.dir/__/deps/glad.c.o: OpenGLs/glfw-3.2.1/tests/CMakeFiles/joysticks.dir/flags.make
OpenGLs/glfw-3.2.1/tests/CMakeFiles/joysticks.dir/__/deps/glad.c.o: ../OpenGLs/glfw-3.2.1/deps/glad.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/NamjoAhn/ClionProjects/SComplex_Visualization/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object OpenGLs/glfw-3.2.1/tests/CMakeFiles/joysticks.dir/__/deps/glad.c.o"
	cd /Users/NamjoAhn/ClionProjects/SComplex_Visualization/cmake-build-debug/OpenGLs/glfw-3.2.1/tests && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/joysticks.dir/__/deps/glad.c.o   -c /Users/NamjoAhn/ClionProjects/SComplex_Visualization/OpenGLs/glfw-3.2.1/deps/glad.c

OpenGLs/glfw-3.2.1/tests/CMakeFiles/joysticks.dir/__/deps/glad.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/joysticks.dir/__/deps/glad.c.i"
	cd /Users/NamjoAhn/ClionProjects/SComplex_Visualization/cmake-build-debug/OpenGLs/glfw-3.2.1/tests && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/NamjoAhn/ClionProjects/SComplex_Visualization/OpenGLs/glfw-3.2.1/deps/glad.c > CMakeFiles/joysticks.dir/__/deps/glad.c.i

OpenGLs/glfw-3.2.1/tests/CMakeFiles/joysticks.dir/__/deps/glad.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/joysticks.dir/__/deps/glad.c.s"
	cd /Users/NamjoAhn/ClionProjects/SComplex_Visualization/cmake-build-debug/OpenGLs/glfw-3.2.1/tests && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/NamjoAhn/ClionProjects/SComplex_Visualization/OpenGLs/glfw-3.2.1/deps/glad.c -o CMakeFiles/joysticks.dir/__/deps/glad.c.s

OpenGLs/glfw-3.2.1/tests/CMakeFiles/joysticks.dir/__/deps/glad.c.o.requires:

.PHONY : OpenGLs/glfw-3.2.1/tests/CMakeFiles/joysticks.dir/__/deps/glad.c.o.requires

OpenGLs/glfw-3.2.1/tests/CMakeFiles/joysticks.dir/__/deps/glad.c.o.provides: OpenGLs/glfw-3.2.1/tests/CMakeFiles/joysticks.dir/__/deps/glad.c.o.requires
	$(MAKE) -f OpenGLs/glfw-3.2.1/tests/CMakeFiles/joysticks.dir/build.make OpenGLs/glfw-3.2.1/tests/CMakeFiles/joysticks.dir/__/deps/glad.c.o.provides.build
.PHONY : OpenGLs/glfw-3.2.1/tests/CMakeFiles/joysticks.dir/__/deps/glad.c.o.provides

OpenGLs/glfw-3.2.1/tests/CMakeFiles/joysticks.dir/__/deps/glad.c.o.provides.build: OpenGLs/glfw-3.2.1/tests/CMakeFiles/joysticks.dir/__/deps/glad.c.o


# Object files for target joysticks
joysticks_OBJECTS = \
"CMakeFiles/joysticks.dir/joysticks.c.o" \
"CMakeFiles/joysticks.dir/__/deps/glad.c.o"

# External object files for target joysticks
joysticks_EXTERNAL_OBJECTS =

OpenGLs/glfw-3.2.1/tests/joysticks: OpenGLs/glfw-3.2.1/tests/CMakeFiles/joysticks.dir/joysticks.c.o
OpenGLs/glfw-3.2.1/tests/joysticks: OpenGLs/glfw-3.2.1/tests/CMakeFiles/joysticks.dir/__/deps/glad.c.o
OpenGLs/glfw-3.2.1/tests/joysticks: OpenGLs/glfw-3.2.1/tests/CMakeFiles/joysticks.dir/build.make
OpenGLs/glfw-3.2.1/tests/joysticks: OpenGLs/glfw-3.2.1/src/libglfw3.a
OpenGLs/glfw-3.2.1/tests/joysticks: OpenGLs/glfw-3.2.1/tests/CMakeFiles/joysticks.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/NamjoAhn/ClionProjects/SComplex_Visualization/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable joysticks"
	cd /Users/NamjoAhn/ClionProjects/SComplex_Visualization/cmake-build-debug/OpenGLs/glfw-3.2.1/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/joysticks.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
OpenGLs/glfw-3.2.1/tests/CMakeFiles/joysticks.dir/build: OpenGLs/glfw-3.2.1/tests/joysticks

.PHONY : OpenGLs/glfw-3.2.1/tests/CMakeFiles/joysticks.dir/build

OpenGLs/glfw-3.2.1/tests/CMakeFiles/joysticks.dir/requires: OpenGLs/glfw-3.2.1/tests/CMakeFiles/joysticks.dir/joysticks.c.o.requires
OpenGLs/glfw-3.2.1/tests/CMakeFiles/joysticks.dir/requires: OpenGLs/glfw-3.2.1/tests/CMakeFiles/joysticks.dir/__/deps/glad.c.o.requires

.PHONY : OpenGLs/glfw-3.2.1/tests/CMakeFiles/joysticks.dir/requires

OpenGLs/glfw-3.2.1/tests/CMakeFiles/joysticks.dir/clean:
	cd /Users/NamjoAhn/ClionProjects/SComplex_Visualization/cmake-build-debug/OpenGLs/glfw-3.2.1/tests && $(CMAKE_COMMAND) -P CMakeFiles/joysticks.dir/cmake_clean.cmake
.PHONY : OpenGLs/glfw-3.2.1/tests/CMakeFiles/joysticks.dir/clean

OpenGLs/glfw-3.2.1/tests/CMakeFiles/joysticks.dir/depend:
	cd /Users/NamjoAhn/ClionProjects/SComplex_Visualization/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/NamjoAhn/ClionProjects/SComplex_Visualization /Users/NamjoAhn/ClionProjects/SComplex_Visualization/OpenGLs/glfw-3.2.1/tests /Users/NamjoAhn/ClionProjects/SComplex_Visualization/cmake-build-debug /Users/NamjoAhn/ClionProjects/SComplex_Visualization/cmake-build-debug/OpenGLs/glfw-3.2.1/tests /Users/NamjoAhn/ClionProjects/SComplex_Visualization/cmake-build-debug/OpenGLs/glfw-3.2.1/tests/CMakeFiles/joysticks.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : OpenGLs/glfw-3.2.1/tests/CMakeFiles/joysticks.dir/depend

