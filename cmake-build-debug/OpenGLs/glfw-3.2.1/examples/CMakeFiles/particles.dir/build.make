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
include OpenGLs/glfw-3.2.1/examples/CMakeFiles/particles.dir/depend.make

# Include the progress variables for this target.
include OpenGLs/glfw-3.2.1/examples/CMakeFiles/particles.dir/progress.make

# Include the compile flags for this target's objects.
include OpenGLs/glfw-3.2.1/examples/CMakeFiles/particles.dir/flags.make

OpenGLs/glfw-3.2.1/examples/particles.app/Contents/Resources/glfw.icns: ../OpenGLs/glfw-3.2.1/examples/glfw.icns
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Copying OS X content OpenGLs/glfw-3.2.1/examples/particles.app/Contents/Resources/glfw.icns"
	$(CMAKE_COMMAND) -E copy /Users/NamjoAhn/ClionProjects/SComplex_Visualization/OpenGLs/glfw-3.2.1/examples/glfw.icns OpenGLs/glfw-3.2.1/examples/particles.app/Contents/Resources/glfw.icns

OpenGLs/glfw-3.2.1/examples/CMakeFiles/particles.dir/particles.c.o: OpenGLs/glfw-3.2.1/examples/CMakeFiles/particles.dir/flags.make
OpenGLs/glfw-3.2.1/examples/CMakeFiles/particles.dir/particles.c.o: ../OpenGLs/glfw-3.2.1/examples/particles.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/NamjoAhn/ClionProjects/SComplex_Visualization/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object OpenGLs/glfw-3.2.1/examples/CMakeFiles/particles.dir/particles.c.o"
	cd /Users/NamjoAhn/ClionProjects/SComplex_Visualization/cmake-build-debug/OpenGLs/glfw-3.2.1/examples && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/particles.dir/particles.c.o   -c /Users/NamjoAhn/ClionProjects/SComplex_Visualization/OpenGLs/glfw-3.2.1/examples/particles.c

OpenGLs/glfw-3.2.1/examples/CMakeFiles/particles.dir/particles.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/particles.dir/particles.c.i"
	cd /Users/NamjoAhn/ClionProjects/SComplex_Visualization/cmake-build-debug/OpenGLs/glfw-3.2.1/examples && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/NamjoAhn/ClionProjects/SComplex_Visualization/OpenGLs/glfw-3.2.1/examples/particles.c > CMakeFiles/particles.dir/particles.c.i

OpenGLs/glfw-3.2.1/examples/CMakeFiles/particles.dir/particles.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/particles.dir/particles.c.s"
	cd /Users/NamjoAhn/ClionProjects/SComplex_Visualization/cmake-build-debug/OpenGLs/glfw-3.2.1/examples && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/NamjoAhn/ClionProjects/SComplex_Visualization/OpenGLs/glfw-3.2.1/examples/particles.c -o CMakeFiles/particles.dir/particles.c.s

OpenGLs/glfw-3.2.1/examples/CMakeFiles/particles.dir/particles.c.o.requires:

.PHONY : OpenGLs/glfw-3.2.1/examples/CMakeFiles/particles.dir/particles.c.o.requires

OpenGLs/glfw-3.2.1/examples/CMakeFiles/particles.dir/particles.c.o.provides: OpenGLs/glfw-3.2.1/examples/CMakeFiles/particles.dir/particles.c.o.requires
	$(MAKE) -f OpenGLs/glfw-3.2.1/examples/CMakeFiles/particles.dir/build.make OpenGLs/glfw-3.2.1/examples/CMakeFiles/particles.dir/particles.c.o.provides.build
.PHONY : OpenGLs/glfw-3.2.1/examples/CMakeFiles/particles.dir/particles.c.o.provides

OpenGLs/glfw-3.2.1/examples/CMakeFiles/particles.dir/particles.c.o.provides.build: OpenGLs/glfw-3.2.1/examples/CMakeFiles/particles.dir/particles.c.o


OpenGLs/glfw-3.2.1/examples/CMakeFiles/particles.dir/__/deps/tinycthread.c.o: OpenGLs/glfw-3.2.1/examples/CMakeFiles/particles.dir/flags.make
OpenGLs/glfw-3.2.1/examples/CMakeFiles/particles.dir/__/deps/tinycthread.c.o: ../OpenGLs/glfw-3.2.1/deps/tinycthread.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/NamjoAhn/ClionProjects/SComplex_Visualization/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object OpenGLs/glfw-3.2.1/examples/CMakeFiles/particles.dir/__/deps/tinycthread.c.o"
	cd /Users/NamjoAhn/ClionProjects/SComplex_Visualization/cmake-build-debug/OpenGLs/glfw-3.2.1/examples && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/particles.dir/__/deps/tinycthread.c.o   -c /Users/NamjoAhn/ClionProjects/SComplex_Visualization/OpenGLs/glfw-3.2.1/deps/tinycthread.c

OpenGLs/glfw-3.2.1/examples/CMakeFiles/particles.dir/__/deps/tinycthread.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/particles.dir/__/deps/tinycthread.c.i"
	cd /Users/NamjoAhn/ClionProjects/SComplex_Visualization/cmake-build-debug/OpenGLs/glfw-3.2.1/examples && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/NamjoAhn/ClionProjects/SComplex_Visualization/OpenGLs/glfw-3.2.1/deps/tinycthread.c > CMakeFiles/particles.dir/__/deps/tinycthread.c.i

OpenGLs/glfw-3.2.1/examples/CMakeFiles/particles.dir/__/deps/tinycthread.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/particles.dir/__/deps/tinycthread.c.s"
	cd /Users/NamjoAhn/ClionProjects/SComplex_Visualization/cmake-build-debug/OpenGLs/glfw-3.2.1/examples && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/NamjoAhn/ClionProjects/SComplex_Visualization/OpenGLs/glfw-3.2.1/deps/tinycthread.c -o CMakeFiles/particles.dir/__/deps/tinycthread.c.s

OpenGLs/glfw-3.2.1/examples/CMakeFiles/particles.dir/__/deps/tinycthread.c.o.requires:

.PHONY : OpenGLs/glfw-3.2.1/examples/CMakeFiles/particles.dir/__/deps/tinycthread.c.o.requires

OpenGLs/glfw-3.2.1/examples/CMakeFiles/particles.dir/__/deps/tinycthread.c.o.provides: OpenGLs/glfw-3.2.1/examples/CMakeFiles/particles.dir/__/deps/tinycthread.c.o.requires
	$(MAKE) -f OpenGLs/glfw-3.2.1/examples/CMakeFiles/particles.dir/build.make OpenGLs/glfw-3.2.1/examples/CMakeFiles/particles.dir/__/deps/tinycthread.c.o.provides.build
.PHONY : OpenGLs/glfw-3.2.1/examples/CMakeFiles/particles.dir/__/deps/tinycthread.c.o.provides

OpenGLs/glfw-3.2.1/examples/CMakeFiles/particles.dir/__/deps/tinycthread.c.o.provides.build: OpenGLs/glfw-3.2.1/examples/CMakeFiles/particles.dir/__/deps/tinycthread.c.o


OpenGLs/glfw-3.2.1/examples/CMakeFiles/particles.dir/__/deps/getopt.c.o: OpenGLs/glfw-3.2.1/examples/CMakeFiles/particles.dir/flags.make
OpenGLs/glfw-3.2.1/examples/CMakeFiles/particles.dir/__/deps/getopt.c.o: ../OpenGLs/glfw-3.2.1/deps/getopt.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/NamjoAhn/ClionProjects/SComplex_Visualization/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object OpenGLs/glfw-3.2.1/examples/CMakeFiles/particles.dir/__/deps/getopt.c.o"
	cd /Users/NamjoAhn/ClionProjects/SComplex_Visualization/cmake-build-debug/OpenGLs/glfw-3.2.1/examples && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/particles.dir/__/deps/getopt.c.o   -c /Users/NamjoAhn/ClionProjects/SComplex_Visualization/OpenGLs/glfw-3.2.1/deps/getopt.c

OpenGLs/glfw-3.2.1/examples/CMakeFiles/particles.dir/__/deps/getopt.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/particles.dir/__/deps/getopt.c.i"
	cd /Users/NamjoAhn/ClionProjects/SComplex_Visualization/cmake-build-debug/OpenGLs/glfw-3.2.1/examples && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/NamjoAhn/ClionProjects/SComplex_Visualization/OpenGLs/glfw-3.2.1/deps/getopt.c > CMakeFiles/particles.dir/__/deps/getopt.c.i

OpenGLs/glfw-3.2.1/examples/CMakeFiles/particles.dir/__/deps/getopt.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/particles.dir/__/deps/getopt.c.s"
	cd /Users/NamjoAhn/ClionProjects/SComplex_Visualization/cmake-build-debug/OpenGLs/glfw-3.2.1/examples && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/NamjoAhn/ClionProjects/SComplex_Visualization/OpenGLs/glfw-3.2.1/deps/getopt.c -o CMakeFiles/particles.dir/__/deps/getopt.c.s

OpenGLs/glfw-3.2.1/examples/CMakeFiles/particles.dir/__/deps/getopt.c.o.requires:

.PHONY : OpenGLs/glfw-3.2.1/examples/CMakeFiles/particles.dir/__/deps/getopt.c.o.requires

OpenGLs/glfw-3.2.1/examples/CMakeFiles/particles.dir/__/deps/getopt.c.o.provides: OpenGLs/glfw-3.2.1/examples/CMakeFiles/particles.dir/__/deps/getopt.c.o.requires
	$(MAKE) -f OpenGLs/glfw-3.2.1/examples/CMakeFiles/particles.dir/build.make OpenGLs/glfw-3.2.1/examples/CMakeFiles/particles.dir/__/deps/getopt.c.o.provides.build
.PHONY : OpenGLs/glfw-3.2.1/examples/CMakeFiles/particles.dir/__/deps/getopt.c.o.provides

OpenGLs/glfw-3.2.1/examples/CMakeFiles/particles.dir/__/deps/getopt.c.o.provides.build: OpenGLs/glfw-3.2.1/examples/CMakeFiles/particles.dir/__/deps/getopt.c.o


OpenGLs/glfw-3.2.1/examples/CMakeFiles/particles.dir/__/deps/glad.c.o: OpenGLs/glfw-3.2.1/examples/CMakeFiles/particles.dir/flags.make
OpenGLs/glfw-3.2.1/examples/CMakeFiles/particles.dir/__/deps/glad.c.o: ../OpenGLs/glfw-3.2.1/deps/glad.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/NamjoAhn/ClionProjects/SComplex_Visualization/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object OpenGLs/glfw-3.2.1/examples/CMakeFiles/particles.dir/__/deps/glad.c.o"
	cd /Users/NamjoAhn/ClionProjects/SComplex_Visualization/cmake-build-debug/OpenGLs/glfw-3.2.1/examples && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/particles.dir/__/deps/glad.c.o   -c /Users/NamjoAhn/ClionProjects/SComplex_Visualization/OpenGLs/glfw-3.2.1/deps/glad.c

OpenGLs/glfw-3.2.1/examples/CMakeFiles/particles.dir/__/deps/glad.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/particles.dir/__/deps/glad.c.i"
	cd /Users/NamjoAhn/ClionProjects/SComplex_Visualization/cmake-build-debug/OpenGLs/glfw-3.2.1/examples && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/NamjoAhn/ClionProjects/SComplex_Visualization/OpenGLs/glfw-3.2.1/deps/glad.c > CMakeFiles/particles.dir/__/deps/glad.c.i

OpenGLs/glfw-3.2.1/examples/CMakeFiles/particles.dir/__/deps/glad.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/particles.dir/__/deps/glad.c.s"
	cd /Users/NamjoAhn/ClionProjects/SComplex_Visualization/cmake-build-debug/OpenGLs/glfw-3.2.1/examples && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/NamjoAhn/ClionProjects/SComplex_Visualization/OpenGLs/glfw-3.2.1/deps/glad.c -o CMakeFiles/particles.dir/__/deps/glad.c.s

OpenGLs/glfw-3.2.1/examples/CMakeFiles/particles.dir/__/deps/glad.c.o.requires:

.PHONY : OpenGLs/glfw-3.2.1/examples/CMakeFiles/particles.dir/__/deps/glad.c.o.requires

OpenGLs/glfw-3.2.1/examples/CMakeFiles/particles.dir/__/deps/glad.c.o.provides: OpenGLs/glfw-3.2.1/examples/CMakeFiles/particles.dir/__/deps/glad.c.o.requires
	$(MAKE) -f OpenGLs/glfw-3.2.1/examples/CMakeFiles/particles.dir/build.make OpenGLs/glfw-3.2.1/examples/CMakeFiles/particles.dir/__/deps/glad.c.o.provides.build
.PHONY : OpenGLs/glfw-3.2.1/examples/CMakeFiles/particles.dir/__/deps/glad.c.o.provides

OpenGLs/glfw-3.2.1/examples/CMakeFiles/particles.dir/__/deps/glad.c.o.provides.build: OpenGLs/glfw-3.2.1/examples/CMakeFiles/particles.dir/__/deps/glad.c.o


# Object files for target particles
particles_OBJECTS = \
"CMakeFiles/particles.dir/particles.c.o" \
"CMakeFiles/particles.dir/__/deps/tinycthread.c.o" \
"CMakeFiles/particles.dir/__/deps/getopt.c.o" \
"CMakeFiles/particles.dir/__/deps/glad.c.o"

# External object files for target particles
particles_EXTERNAL_OBJECTS =

OpenGLs/glfw-3.2.1/examples/particles.app/Contents/MacOS/particles: OpenGLs/glfw-3.2.1/examples/CMakeFiles/particles.dir/particles.c.o
OpenGLs/glfw-3.2.1/examples/particles.app/Contents/MacOS/particles: OpenGLs/glfw-3.2.1/examples/CMakeFiles/particles.dir/__/deps/tinycthread.c.o
OpenGLs/glfw-3.2.1/examples/particles.app/Contents/MacOS/particles: OpenGLs/glfw-3.2.1/examples/CMakeFiles/particles.dir/__/deps/getopt.c.o
OpenGLs/glfw-3.2.1/examples/particles.app/Contents/MacOS/particles: OpenGLs/glfw-3.2.1/examples/CMakeFiles/particles.dir/__/deps/glad.c.o
OpenGLs/glfw-3.2.1/examples/particles.app/Contents/MacOS/particles: OpenGLs/glfw-3.2.1/examples/CMakeFiles/particles.dir/build.make
OpenGLs/glfw-3.2.1/examples/particles.app/Contents/MacOS/particles: OpenGLs/glfw-3.2.1/src/libglfw3.a
OpenGLs/glfw-3.2.1/examples/particles.app/Contents/MacOS/particles: OpenGLs/glfw-3.2.1/examples/CMakeFiles/particles.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/NamjoAhn/ClionProjects/SComplex_Visualization/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking C executable particles.app/Contents/MacOS/particles"
	cd /Users/NamjoAhn/ClionProjects/SComplex_Visualization/cmake-build-debug/OpenGLs/glfw-3.2.1/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/particles.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
OpenGLs/glfw-3.2.1/examples/CMakeFiles/particles.dir/build: OpenGLs/glfw-3.2.1/examples/particles.app/Contents/MacOS/particles
OpenGLs/glfw-3.2.1/examples/CMakeFiles/particles.dir/build: OpenGLs/glfw-3.2.1/examples/particles.app/Contents/Resources/glfw.icns

.PHONY : OpenGLs/glfw-3.2.1/examples/CMakeFiles/particles.dir/build

OpenGLs/glfw-3.2.1/examples/CMakeFiles/particles.dir/requires: OpenGLs/glfw-3.2.1/examples/CMakeFiles/particles.dir/particles.c.o.requires
OpenGLs/glfw-3.2.1/examples/CMakeFiles/particles.dir/requires: OpenGLs/glfw-3.2.1/examples/CMakeFiles/particles.dir/__/deps/tinycthread.c.o.requires
OpenGLs/glfw-3.2.1/examples/CMakeFiles/particles.dir/requires: OpenGLs/glfw-3.2.1/examples/CMakeFiles/particles.dir/__/deps/getopt.c.o.requires
OpenGLs/glfw-3.2.1/examples/CMakeFiles/particles.dir/requires: OpenGLs/glfw-3.2.1/examples/CMakeFiles/particles.dir/__/deps/glad.c.o.requires

.PHONY : OpenGLs/glfw-3.2.1/examples/CMakeFiles/particles.dir/requires

OpenGLs/glfw-3.2.1/examples/CMakeFiles/particles.dir/clean:
	cd /Users/NamjoAhn/ClionProjects/SComplex_Visualization/cmake-build-debug/OpenGLs/glfw-3.2.1/examples && $(CMAKE_COMMAND) -P CMakeFiles/particles.dir/cmake_clean.cmake
.PHONY : OpenGLs/glfw-3.2.1/examples/CMakeFiles/particles.dir/clean

OpenGLs/glfw-3.2.1/examples/CMakeFiles/particles.dir/depend:
	cd /Users/NamjoAhn/ClionProjects/SComplex_Visualization/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/NamjoAhn/ClionProjects/SComplex_Visualization /Users/NamjoAhn/ClionProjects/SComplex_Visualization/OpenGLs/glfw-3.2.1/examples /Users/NamjoAhn/ClionProjects/SComplex_Visualization/cmake-build-debug /Users/NamjoAhn/ClionProjects/SComplex_Visualization/cmake-build-debug/OpenGLs/glfw-3.2.1/examples /Users/NamjoAhn/ClionProjects/SComplex_Visualization/cmake-build-debug/OpenGLs/glfw-3.2.1/examples/CMakeFiles/particles.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : OpenGLs/glfw-3.2.1/examples/CMakeFiles/particles.dir/depend

