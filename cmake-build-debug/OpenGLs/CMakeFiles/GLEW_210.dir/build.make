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
include OpenGLs/CMakeFiles/GLEW_210.dir/depend.make

# Include the progress variables for this target.
include OpenGLs/CMakeFiles/GLEW_210.dir/progress.make

# Include the compile flags for this target's objects.
include OpenGLs/CMakeFiles/GLEW_210.dir/flags.make

OpenGLs/CMakeFiles/GLEW_210.dir/glew-2.1.0/src/glew.c.o: OpenGLs/CMakeFiles/GLEW_210.dir/flags.make
OpenGLs/CMakeFiles/GLEW_210.dir/glew-2.1.0/src/glew.c.o: ../OpenGLs/glew-2.1.0/src/glew.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/NamjoAhn/ClionProjects/SComplex_Visualization/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object OpenGLs/CMakeFiles/GLEW_210.dir/glew-2.1.0/src/glew.c.o"
	cd /Users/NamjoAhn/ClionProjects/SComplex_Visualization/cmake-build-debug/OpenGLs && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/GLEW_210.dir/glew-2.1.0/src/glew.c.o   -c /Users/NamjoAhn/ClionProjects/SComplex_Visualization/OpenGLs/glew-2.1.0/src/glew.c

OpenGLs/CMakeFiles/GLEW_210.dir/glew-2.1.0/src/glew.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/GLEW_210.dir/glew-2.1.0/src/glew.c.i"
	cd /Users/NamjoAhn/ClionProjects/SComplex_Visualization/cmake-build-debug/OpenGLs && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/NamjoAhn/ClionProjects/SComplex_Visualization/OpenGLs/glew-2.1.0/src/glew.c > CMakeFiles/GLEW_210.dir/glew-2.1.0/src/glew.c.i

OpenGLs/CMakeFiles/GLEW_210.dir/glew-2.1.0/src/glew.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/GLEW_210.dir/glew-2.1.0/src/glew.c.s"
	cd /Users/NamjoAhn/ClionProjects/SComplex_Visualization/cmake-build-debug/OpenGLs && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/NamjoAhn/ClionProjects/SComplex_Visualization/OpenGLs/glew-2.1.0/src/glew.c -o CMakeFiles/GLEW_210.dir/glew-2.1.0/src/glew.c.s

OpenGLs/CMakeFiles/GLEW_210.dir/glew-2.1.0/src/glew.c.o.requires:

.PHONY : OpenGLs/CMakeFiles/GLEW_210.dir/glew-2.1.0/src/glew.c.o.requires

OpenGLs/CMakeFiles/GLEW_210.dir/glew-2.1.0/src/glew.c.o.provides: OpenGLs/CMakeFiles/GLEW_210.dir/glew-2.1.0/src/glew.c.o.requires
	$(MAKE) -f OpenGLs/CMakeFiles/GLEW_210.dir/build.make OpenGLs/CMakeFiles/GLEW_210.dir/glew-2.1.0/src/glew.c.o.provides.build
.PHONY : OpenGLs/CMakeFiles/GLEW_210.dir/glew-2.1.0/src/glew.c.o.provides

OpenGLs/CMakeFiles/GLEW_210.dir/glew-2.1.0/src/glew.c.o.provides.build: OpenGLs/CMakeFiles/GLEW_210.dir/glew-2.1.0/src/glew.c.o


# Object files for target GLEW_210
GLEW_210_OBJECTS = \
"CMakeFiles/GLEW_210.dir/glew-2.1.0/src/glew.c.o"

# External object files for target GLEW_210
GLEW_210_EXTERNAL_OBJECTS =

OpenGLs/libGLEW_210.a: OpenGLs/CMakeFiles/GLEW_210.dir/glew-2.1.0/src/glew.c.o
OpenGLs/libGLEW_210.a: OpenGLs/CMakeFiles/GLEW_210.dir/build.make
OpenGLs/libGLEW_210.a: OpenGLs/CMakeFiles/GLEW_210.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/NamjoAhn/ClionProjects/SComplex_Visualization/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C static library libGLEW_210.a"
	cd /Users/NamjoAhn/ClionProjects/SComplex_Visualization/cmake-build-debug/OpenGLs && $(CMAKE_COMMAND) -P CMakeFiles/GLEW_210.dir/cmake_clean_target.cmake
	cd /Users/NamjoAhn/ClionProjects/SComplex_Visualization/cmake-build-debug/OpenGLs && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/GLEW_210.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
OpenGLs/CMakeFiles/GLEW_210.dir/build: OpenGLs/libGLEW_210.a

.PHONY : OpenGLs/CMakeFiles/GLEW_210.dir/build

OpenGLs/CMakeFiles/GLEW_210.dir/requires: OpenGLs/CMakeFiles/GLEW_210.dir/glew-2.1.0/src/glew.c.o.requires

.PHONY : OpenGLs/CMakeFiles/GLEW_210.dir/requires

OpenGLs/CMakeFiles/GLEW_210.dir/clean:
	cd /Users/NamjoAhn/ClionProjects/SComplex_Visualization/cmake-build-debug/OpenGLs && $(CMAKE_COMMAND) -P CMakeFiles/GLEW_210.dir/cmake_clean.cmake
.PHONY : OpenGLs/CMakeFiles/GLEW_210.dir/clean

OpenGLs/CMakeFiles/GLEW_210.dir/depend:
	cd /Users/NamjoAhn/ClionProjects/SComplex_Visualization/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/NamjoAhn/ClionProjects/SComplex_Visualization /Users/NamjoAhn/ClionProjects/SComplex_Visualization/OpenGLs /Users/NamjoAhn/ClionProjects/SComplex_Visualization/cmake-build-debug /Users/NamjoAhn/ClionProjects/SComplex_Visualization/cmake-build-debug/OpenGLs /Users/NamjoAhn/ClionProjects/SComplex_Visualization/cmake-build-debug/OpenGLs/CMakeFiles/GLEW_210.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : OpenGLs/CMakeFiles/GLEW_210.dir/depend

