# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.17

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

# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "G:\CLion 2020.3.1\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "G:\CLion 2020.3.1\bin\cmake\win\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\Clinterpottrmus\CLionProjects\HW8

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\Clinterpottrmus\CLionProjects\HW8\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/HW8.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/HW8.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/HW8.dir/flags.make

CMakeFiles/HW8.dir/main.cpp.obj: CMakeFiles/HW8.dir/flags.make
CMakeFiles/HW8.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Clinterpottrmus\CLionProjects\HW8\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/HW8.dir/main.cpp.obj"
	G:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\HW8.dir\main.cpp.obj -c C:\Users\Clinterpottrmus\CLionProjects\HW8\main.cpp

CMakeFiles/HW8.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/HW8.dir/main.cpp.i"
	G:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Clinterpottrmus\CLionProjects\HW8\main.cpp > CMakeFiles\HW8.dir\main.cpp.i

CMakeFiles/HW8.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/HW8.dir/main.cpp.s"
	G:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\Clinterpottrmus\CLionProjects\HW8\main.cpp -o CMakeFiles\HW8.dir\main.cpp.s

# Object files for target HW8
HW8_OBJECTS = \
"CMakeFiles/HW8.dir/main.cpp.obj"

# External object files for target HW8
HW8_EXTERNAL_OBJECTS =

HW8.exe: CMakeFiles/HW8.dir/main.cpp.obj
HW8.exe: CMakeFiles/HW8.dir/build.make
HW8.exe: CMakeFiles/HW8.dir/linklibs.rsp
HW8.exe: CMakeFiles/HW8.dir/objects1.rsp
HW8.exe: CMakeFiles/HW8.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\Clinterpottrmus\CLionProjects\HW8\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable HW8.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\HW8.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/HW8.dir/build: HW8.exe

.PHONY : CMakeFiles/HW8.dir/build

CMakeFiles/HW8.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\HW8.dir\cmake_clean.cmake
.PHONY : CMakeFiles/HW8.dir/clean

CMakeFiles/HW8.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\Clinterpottrmus\CLionProjects\HW8 C:\Users\Clinterpottrmus\CLionProjects\HW8 C:\Users\Clinterpottrmus\CLionProjects\HW8\cmake-build-debug C:\Users\Clinterpottrmus\CLionProjects\HW8\cmake-build-debug C:\Users\Clinterpottrmus\CLionProjects\HW8\cmake-build-debug\CMakeFiles\HW8.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/HW8.dir/depend

