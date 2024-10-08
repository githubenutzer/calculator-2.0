# Specify the minimum required version of CMake
cmake_minimum_required(VERSION 3.10)

# Define the project name
project(calculator)

# Set the C++ standard to C++11
set(CMAKE_CXX_STANDARD 11)

# Add a static library target using the calculator source file
add_library(calculator STATIC calculator.cpp)

# Create an executable target from the main source file
add_executable(calculator_exec main.cpp)

# Link the executable with the calculator library
target_link_libraries(calculator_exec calculator)
