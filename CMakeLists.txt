cmake_minimum_required(VERSION 3.0.0)

project(MyCombinedProject)

set(CMAKE_CXX_STANDARD 20)

# 32-bit x86
set(CMAKE_GENERATOR_PLATFORM WIN32)

# libraries that can be used with #include <...>
include_directories(Dependencies/GWCA)

# cmake dependencies
add_subdirectory(Dependencies/GWCA)

# ===========
# setup MyDLL
#
# library that can be used by other projects
# ===========

# target
add_library(MyDLL SHARED
    MyDLL/src/MyDLL.cpp
    MyDLL/src/MyDLL.h
)

# ?? don't know why this is needed ??
target_include_directories(MyDLL PUBLIC MyDLL/src)

# definitions
target_compile_definitions(MyDLL PRIVATE MyDLL_EXPORTS)

# link
target_link_libraries(MyDLL PRIVATE gwca) # to gwca

# ===========
# setup MyApp
#
# main executable that a user can run to start the project
# ===========

# target
add_executable(MyApp MyApp/src/MyApp.cpp)

# link
target_link_libraries(MyApp PRIVATE MyDLL) # to MyDLL
target_link_libraries(MyApp PRIVATE gwca) # to gwca

# ==================
# setup PacketLogger
#
# example DLL that can be injected into the Guild Wars process
# that opens a console that logs packets
# ==================

# target
add_library(PacketLogger SHARED PacketLogger/src/PacketLogger.cpp)

# link
target_link_libraries(PacketLogger PRIVATE gwca) # to gwca

# 

# add_library(MyDLL SHARED
#     MyDLL/src/MyDLL.h
#     MyDLL/src/MyDLL.cpp
# )

# target_include_directories(MyDLL PUBLIC MyDLL/src)
# target_compile_definitions(MyDLL PRIVATE MyDLL_EXPORTS)

# add_executable(MyApp
#     MyApp/src/main.cpp
# )

# target_link_libraries(MyApp PRIVATE MyDLL)
