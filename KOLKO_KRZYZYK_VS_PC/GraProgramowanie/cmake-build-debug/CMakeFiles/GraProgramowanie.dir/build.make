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
CMAKE_COMMAND = "C:\Users\barto\Downloads\CLion 2020.2.4\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Users\barto\Downloads\CLion 2020.2.4\bin\cmake\win\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\GraProgramowanie

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\GraProgramowanie\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/GraProgramowanie.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/GraProgramowanie.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/GraProgramowanie.dir/flags.make

CMakeFiles/GraProgramowanie.dir/Kolko_Krzyzyk.c.obj: CMakeFiles/GraProgramowanie.dir/flags.make
CMakeFiles/GraProgramowanie.dir/Kolko_Krzyzyk.c.obj: ../Kolko_Krzyzyk.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\GraProgramowanie\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/GraProgramowanie.dir/Kolko_Krzyzyk.c.obj"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\GraProgramowanie.dir\Kolko_Krzyzyk.c.obj   -c C:\GraProgramowanie\Kolko_Krzyzyk.c

CMakeFiles/GraProgramowanie.dir/Kolko_Krzyzyk.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/GraProgramowanie.dir/Kolko_Krzyzyk.c.i"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\GraProgramowanie\Kolko_Krzyzyk.c > CMakeFiles\GraProgramowanie.dir\Kolko_Krzyzyk.c.i

CMakeFiles/GraProgramowanie.dir/Kolko_Krzyzyk.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/GraProgramowanie.dir/Kolko_Krzyzyk.c.s"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\GraProgramowanie\Kolko_Krzyzyk.c -o CMakeFiles\GraProgramowanie.dir\Kolko_Krzyzyk.c.s

# Object files for target GraProgramowanie
GraProgramowanie_OBJECTS = \
"CMakeFiles/GraProgramowanie.dir/Kolko_Krzyzyk.c.obj"

# External object files for target GraProgramowanie
GraProgramowanie_EXTERNAL_OBJECTS =

GraProgramowanie.exe: CMakeFiles/GraProgramowanie.dir/Kolko_Krzyzyk.c.obj
GraProgramowanie.exe: CMakeFiles/GraProgramowanie.dir/build.make
GraProgramowanie.exe: CMakeFiles/GraProgramowanie.dir/linklibs.rsp
GraProgramowanie.exe: CMakeFiles/GraProgramowanie.dir/objects1.rsp
GraProgramowanie.exe: CMakeFiles/GraProgramowanie.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\GraProgramowanie\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable GraProgramowanie.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\GraProgramowanie.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/GraProgramowanie.dir/build: GraProgramowanie.exe

.PHONY : CMakeFiles/GraProgramowanie.dir/build

CMakeFiles/GraProgramowanie.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\GraProgramowanie.dir\cmake_clean.cmake
.PHONY : CMakeFiles/GraProgramowanie.dir/clean

CMakeFiles/GraProgramowanie.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\GraProgramowanie C:\GraProgramowanie C:\GraProgramowanie\cmake-build-debug C:\GraProgramowanie\cmake-build-debug C:\GraProgramowanie\cmake-build-debug\CMakeFiles\GraProgramowanie.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/GraProgramowanie.dir/depend

