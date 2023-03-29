# Set the minimum version of CMake that can be used
# To find the cmake version run
# $ cmake --version
cmake_minimum_required(VERSION 3.5)

# Set the project name
# 名前を含めることで，複数のプロジェクトを簡単に参照することができる．
project (hello_cmake)

# Add an executable
add_executable(hello_cmake main.cpp)

# 以下のように書くこともできる． 
# add_executable(${PROJECT_NAME} main.cpp) 