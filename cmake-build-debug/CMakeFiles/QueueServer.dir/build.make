# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.16

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2020.1.2\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2020.1.2\bin\cmake\win\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\lumbe\CLionProjects\QueueServer

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\lumbe\CLionProjects\QueueServer\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/QueueServer.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/QueueServer.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/QueueServer.dir/flags.make

CMakeFiles/QueueServer.dir/main.cpp.obj: CMakeFiles/QueueServer.dir/flags.make
CMakeFiles/QueueServer.dir/main.cpp.obj: CMakeFiles/QueueServer.dir/includes_CXX.rsp
CMakeFiles/QueueServer.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\lumbe\CLionProjects\QueueServer\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/QueueServer.dir/main.cpp.obj"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\G__~1.EXE  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\QueueServer.dir\main.cpp.obj -c C:\Users\lumbe\CLionProjects\QueueServer\main.cpp

CMakeFiles/QueueServer.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/QueueServer.dir/main.cpp.i"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\lumbe\CLionProjects\QueueServer\main.cpp > CMakeFiles\QueueServer.dir\main.cpp.i

CMakeFiles/QueueServer.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/QueueServer.dir/main.cpp.s"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\lumbe\CLionProjects\QueueServer\main.cpp -o CMakeFiles\QueueServer.dir\main.cpp.s

CMakeFiles/QueueServer.dir/threadsafe_queue.cpp.obj: CMakeFiles/QueueServer.dir/flags.make
CMakeFiles/QueueServer.dir/threadsafe_queue.cpp.obj: CMakeFiles/QueueServer.dir/includes_CXX.rsp
CMakeFiles/QueueServer.dir/threadsafe_queue.cpp.obj: ../threadsafe_queue.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\lumbe\CLionProjects\QueueServer\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/QueueServer.dir/threadsafe_queue.cpp.obj"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\G__~1.EXE  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\QueueServer.dir\threadsafe_queue.cpp.obj -c C:\Users\lumbe\CLionProjects\QueueServer\threadsafe_queue.cpp

CMakeFiles/QueueServer.dir/threadsafe_queue.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/QueueServer.dir/threadsafe_queue.cpp.i"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\lumbe\CLionProjects\QueueServer\threadsafe_queue.cpp > CMakeFiles\QueueServer.dir\threadsafe_queue.cpp.i

CMakeFiles/QueueServer.dir/threadsafe_queue.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/QueueServer.dir/threadsafe_queue.cpp.s"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\lumbe\CLionProjects\QueueServer\threadsafe_queue.cpp -o CMakeFiles\QueueServer.dir\threadsafe_queue.cpp.s

# Object files for target QueueServer
QueueServer_OBJECTS = \
"CMakeFiles/QueueServer.dir/main.cpp.obj" \
"CMakeFiles/QueueServer.dir/threadsafe_queue.cpp.obj"

# External object files for target QueueServer
QueueServer_EXTERNAL_OBJECTS =

QueueServer.exe: CMakeFiles/QueueServer.dir/main.cpp.obj
QueueServer.exe: CMakeFiles/QueueServer.dir/threadsafe_queue.cpp.obj
QueueServer.exe: CMakeFiles/QueueServer.dir/build.make
QueueServer.exe: CMakeFiles/QueueServer.dir/linklibs.rsp
QueueServer.exe: CMakeFiles/QueueServer.dir/objects1.rsp
QueueServer.exe: CMakeFiles/QueueServer.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\lumbe\CLionProjects\QueueServer\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable QueueServer.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\QueueServer.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/QueueServer.dir/build: QueueServer.exe

.PHONY : CMakeFiles/QueueServer.dir/build

CMakeFiles/QueueServer.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\QueueServer.dir\cmake_clean.cmake
.PHONY : CMakeFiles/QueueServer.dir/clean

CMakeFiles/QueueServer.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\lumbe\CLionProjects\QueueServer C:\Users\lumbe\CLionProjects\QueueServer C:\Users\lumbe\CLionProjects\QueueServer\cmake-build-debug C:\Users\lumbe\CLionProjects\QueueServer\cmake-build-debug C:\Users\lumbe\CLionProjects\QueueServer\cmake-build-debug\CMakeFiles\QueueServer.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/QueueServer.dir/depend
