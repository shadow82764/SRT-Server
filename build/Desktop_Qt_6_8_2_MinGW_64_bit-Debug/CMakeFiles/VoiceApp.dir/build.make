# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.31

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\CMake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\CMake\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = E:\other\qt\screen

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = E:\other\qt\screen\build\Desktop_Qt_6_8_2_MinGW_64_bit-Debug

# Include any dependencies generated for this target.
include CMakeFiles/VoiceApp.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/VoiceApp.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/VoiceApp.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/VoiceApp.dir/flags.make

CMakeFiles/VoiceApp.dir/codegen:
.PHONY : CMakeFiles/VoiceApp.dir/codegen

CMakeFiles/VoiceApp.dir/main.cpp.obj: CMakeFiles/VoiceApp.dir/flags.make
CMakeFiles/VoiceApp.dir/main.cpp.obj: CMakeFiles/VoiceApp.dir/includes_CXX.rsp
CMakeFiles/VoiceApp.dir/main.cpp.obj: E:/other/qt/screen/main.cpp
CMakeFiles/VoiceApp.dir/main.cpp.obj: CMakeFiles/VoiceApp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=E:\other\qt\screen\build\Desktop_Qt_6_8_2_MinGW_64_bit-Debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/VoiceApp.dir/main.cpp.obj"
	C:\Qt\Tools\mingw1310_64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/VoiceApp.dir/main.cpp.obj -MF CMakeFiles\VoiceApp.dir\main.cpp.obj.d -o CMakeFiles\VoiceApp.dir\main.cpp.obj -c E:\other\qt\screen\main.cpp

CMakeFiles/VoiceApp.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/VoiceApp.dir/main.cpp.i"
	C:\Qt\Tools\mingw1310_64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E E:\other\qt\screen\main.cpp > CMakeFiles\VoiceApp.dir\main.cpp.i

CMakeFiles/VoiceApp.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/VoiceApp.dir/main.cpp.s"
	C:\Qt\Tools\mingw1310_64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S E:\other\qt\screen\main.cpp -o CMakeFiles\VoiceApp.dir\main.cpp.s

# Object files for target VoiceApp
VoiceApp_OBJECTS = \
"CMakeFiles/VoiceApp.dir/main.cpp.obj"

# External object files for target VoiceApp
VoiceApp_EXTERNAL_OBJECTS =

VoiceApp.exe: CMakeFiles/VoiceApp.dir/main.cpp.obj
VoiceApp.exe: CMakeFiles/VoiceApp.dir/build.make
VoiceApp.exe: C:/Qt/6.8.2/mingw_64/lib/libQt6Widgets.a
VoiceApp.exe: C:/Opus/opus-1.5.2/libopus.a
VoiceApp.exe: C:/Program\ Files/PostgreSQL/17/lib/libpq.lib
VoiceApp.exe: C:/Qt/6.8.2/mingw_64/lib/libQt6Gui.a
VoiceApp.exe: C:/Qt/6.8.2/mingw_64/lib/libQt6Core.a
VoiceApp.exe: CMakeFiles/VoiceApp.dir/linkLibs.rsp
VoiceApp.exe: CMakeFiles/VoiceApp.dir/objects1.rsp
VoiceApp.exe: CMakeFiles/VoiceApp.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=E:\other\qt\screen\build\Desktop_Qt_6_8_2_MinGW_64_bit-Debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable VoiceApp.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\VoiceApp.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/VoiceApp.dir/build: VoiceApp.exe
.PHONY : CMakeFiles/VoiceApp.dir/build

CMakeFiles/VoiceApp.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\VoiceApp.dir\cmake_clean.cmake
.PHONY : CMakeFiles/VoiceApp.dir/clean

CMakeFiles/VoiceApp.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" E:\other\qt\screen E:\other\qt\screen E:\other\qt\screen\build\Desktop_Qt_6_8_2_MinGW_64_bit-Debug E:\other\qt\screen\build\Desktop_Qt_6_8_2_MinGW_64_bit-Debug E:\other\qt\screen\build\Desktop_Qt_6_8_2_MinGW_64_bit-Debug\CMakeFiles\VoiceApp.dir\DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/VoiceApp.dir/depend

