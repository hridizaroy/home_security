# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.21

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
CMAKE_SOURCE_DIR = "C:\Users\hridi\OneDrive\Desktop\Master\Jobs\Summer of Code 2022\LFN\home_sec1"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "C:\Users\hridi\OneDrive\Desktop\Master\Jobs\Summer of Code 2022\LFN\home_sec1\build"

# Include any dependencies generated for this target.
include CMakeFiles/hs.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/hs.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/hs.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/hs.dir/flags.make

CMakeFiles/hs.dir/main.cpp.obj: CMakeFiles/hs.dir/flags.make
CMakeFiles/hs.dir/main.cpp.obj: CMakeFiles/hs.dir/includes_CXX.rsp
CMakeFiles/hs.dir/main.cpp.obj: ../main.cpp
CMakeFiles/hs.dir/main.cpp.obj: CMakeFiles/hs.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="C:\Users\hridi\OneDrive\Desktop\Master\Jobs\Summer of Code 2022\LFN\home_sec1\build\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/hs.dir/main.cpp.obj"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/hs.dir/main.cpp.obj -MF CMakeFiles\hs.dir\main.cpp.obj.d -o CMakeFiles\hs.dir\main.cpp.obj -c "C:\Users\hridi\OneDrive\Desktop\Master\Jobs\Summer of Code 2022\LFN\home_sec1\main.cpp"

CMakeFiles/hs.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/hs.dir/main.cpp.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "C:\Users\hridi\OneDrive\Desktop\Master\Jobs\Summer of Code 2022\LFN\home_sec1\main.cpp" > CMakeFiles\hs.dir\main.cpp.i

CMakeFiles/hs.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/hs.dir/main.cpp.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "C:\Users\hridi\OneDrive\Desktop\Master\Jobs\Summer of Code 2022\LFN\home_sec1\main.cpp" -o CMakeFiles\hs.dir\main.cpp.s

CMakeFiles/hs.dir/HomeSecurity.cpp.obj: CMakeFiles/hs.dir/flags.make
CMakeFiles/hs.dir/HomeSecurity.cpp.obj: CMakeFiles/hs.dir/includes_CXX.rsp
CMakeFiles/hs.dir/HomeSecurity.cpp.obj: ../HomeSecurity.cpp
CMakeFiles/hs.dir/HomeSecurity.cpp.obj: CMakeFiles/hs.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="C:\Users\hridi\OneDrive\Desktop\Master\Jobs\Summer of Code 2022\LFN\home_sec1\build\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/hs.dir/HomeSecurity.cpp.obj"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/hs.dir/HomeSecurity.cpp.obj -MF CMakeFiles\hs.dir\HomeSecurity.cpp.obj.d -o CMakeFiles\hs.dir\HomeSecurity.cpp.obj -c "C:\Users\hridi\OneDrive\Desktop\Master\Jobs\Summer of Code 2022\LFN\home_sec1\HomeSecurity.cpp"

CMakeFiles/hs.dir/HomeSecurity.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/hs.dir/HomeSecurity.cpp.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "C:\Users\hridi\OneDrive\Desktop\Master\Jobs\Summer of Code 2022\LFN\home_sec1\HomeSecurity.cpp" > CMakeFiles\hs.dir\HomeSecurity.cpp.i

CMakeFiles/hs.dir/HomeSecurity.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/hs.dir/HomeSecurity.cpp.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "C:\Users\hridi\OneDrive\Desktop\Master\Jobs\Summer of Code 2022\LFN\home_sec1\HomeSecurity.cpp" -o CMakeFiles\hs.dir\HomeSecurity.cpp.s

CMakeFiles/hs.dir/Parser.cpp.obj: CMakeFiles/hs.dir/flags.make
CMakeFiles/hs.dir/Parser.cpp.obj: CMakeFiles/hs.dir/includes_CXX.rsp
CMakeFiles/hs.dir/Parser.cpp.obj: ../Parser.cpp
CMakeFiles/hs.dir/Parser.cpp.obj: CMakeFiles/hs.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="C:\Users\hridi\OneDrive\Desktop\Master\Jobs\Summer of Code 2022\LFN\home_sec1\build\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/hs.dir/Parser.cpp.obj"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/hs.dir/Parser.cpp.obj -MF CMakeFiles\hs.dir\Parser.cpp.obj.d -o CMakeFiles\hs.dir\Parser.cpp.obj -c "C:\Users\hridi\OneDrive\Desktop\Master\Jobs\Summer of Code 2022\LFN\home_sec1\Parser.cpp"

CMakeFiles/hs.dir/Parser.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/hs.dir/Parser.cpp.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "C:\Users\hridi\OneDrive\Desktop\Master\Jobs\Summer of Code 2022\LFN\home_sec1\Parser.cpp" > CMakeFiles\hs.dir\Parser.cpp.i

CMakeFiles/hs.dir/Parser.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/hs.dir/Parser.cpp.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "C:\Users\hridi\OneDrive\Desktop\Master\Jobs\Summer of Code 2022\LFN\home_sec1\Parser.cpp" -o CMakeFiles\hs.dir\Parser.cpp.s

CMakeFiles/hs.dir/jsoncpp.cpp.obj: CMakeFiles/hs.dir/flags.make
CMakeFiles/hs.dir/jsoncpp.cpp.obj: CMakeFiles/hs.dir/includes_CXX.rsp
CMakeFiles/hs.dir/jsoncpp.cpp.obj: ../jsoncpp.cpp
CMakeFiles/hs.dir/jsoncpp.cpp.obj: CMakeFiles/hs.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="C:\Users\hridi\OneDrive\Desktop\Master\Jobs\Summer of Code 2022\LFN\home_sec1\build\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/hs.dir/jsoncpp.cpp.obj"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/hs.dir/jsoncpp.cpp.obj -MF CMakeFiles\hs.dir\jsoncpp.cpp.obj.d -o CMakeFiles\hs.dir\jsoncpp.cpp.obj -c "C:\Users\hridi\OneDrive\Desktop\Master\Jobs\Summer of Code 2022\LFN\home_sec1\jsoncpp.cpp"

CMakeFiles/hs.dir/jsoncpp.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/hs.dir/jsoncpp.cpp.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "C:\Users\hridi\OneDrive\Desktop\Master\Jobs\Summer of Code 2022\LFN\home_sec1\jsoncpp.cpp" > CMakeFiles\hs.dir\jsoncpp.cpp.i

CMakeFiles/hs.dir/jsoncpp.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/hs.dir/jsoncpp.cpp.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "C:\Users\hridi\OneDrive\Desktop\Master\Jobs\Summer of Code 2022\LFN\home_sec1\jsoncpp.cpp" -o CMakeFiles\hs.dir\jsoncpp.cpp.s

# Object files for target hs
hs_OBJECTS = \
"CMakeFiles/hs.dir/main.cpp.obj" \
"CMakeFiles/hs.dir/HomeSecurity.cpp.obj" \
"CMakeFiles/hs.dir/Parser.cpp.obj" \
"CMakeFiles/hs.dir/jsoncpp.cpp.obj"

# External object files for target hs
hs_EXTERNAL_OBJECTS =

hs.exe: CMakeFiles/hs.dir/main.cpp.obj
hs.exe: CMakeFiles/hs.dir/HomeSecurity.cpp.obj
hs.exe: CMakeFiles/hs.dir/Parser.cpp.obj
hs.exe: CMakeFiles/hs.dir/jsoncpp.cpp.obj
hs.exe: CMakeFiles/hs.dir/build.make
hs.exe: CMakeFiles/hs.dir/linklibs.rsp
hs.exe: CMakeFiles/hs.dir/objects1.rsp
hs.exe: CMakeFiles/hs.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="C:\Users\hridi\OneDrive\Desktop\Master\Jobs\Summer of Code 2022\LFN\home_sec1\build\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable hs.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\hs.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/hs.dir/build: hs.exe
.PHONY : CMakeFiles/hs.dir/build

CMakeFiles/hs.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\hs.dir\cmake_clean.cmake
.PHONY : CMakeFiles/hs.dir/clean

CMakeFiles/hs.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" "C:\Users\hridi\OneDrive\Desktop\Master\Jobs\Summer of Code 2022\LFN\home_sec1" "C:\Users\hridi\OneDrive\Desktop\Master\Jobs\Summer of Code 2022\LFN\home_sec1" "C:\Users\hridi\OneDrive\Desktop\Master\Jobs\Summer of Code 2022\LFN\home_sec1\build" "C:\Users\hridi\OneDrive\Desktop\Master\Jobs\Summer of Code 2022\LFN\home_sec1\build" "C:\Users\hridi\OneDrive\Desktop\Master\Jobs\Summer of Code 2022\LFN\home_sec1\build\CMakeFiles\hs.dir\DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/hs.dir/depend

