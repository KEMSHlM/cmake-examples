# Set the minimum version of CMake that can be used
# To find the cmake version run
# $ cmake --version
cmake_minimum_required(VERSION 3.5)

# Set the project name
project (hello_headers)

# main.cppとhello.cppは区別する必要がないんだな．
set(SOURCES
    src/Hello.cpp
    src/main.cpp
)
# 代わりに，変数を用いることも可能だが，最近のCMakeでは推奨されていない
# file(GLOB SOURCES "src/*.cpp")

# Add an executable with the above sources
add_executable(hello_headers ${SOURCES})

# もし異なるディレクトリにあるヘッダファイルをインクルードしたい場合は，以下を追加する．
# 以下の${PROJECT_SOURCE_DIR}は，CMakeLists.txtがあるディレクトリを指す．
target_include_directories(hello_headers
    PRIVATE 
        ${PROJECT_SOURCE_DIR}/include
)
