cmake_minimum_required(VERSION 3.5)

project(hello_library)

############################################################
# Create a library
############################################################

# ここのSharedは、動的リンクライブラリを作るという意味
# 静的ライブラリは実行ファイルに含まれるが，動的ライブラリは実行ファイルとは別に存在する
add_library(hello_library SHARED 
    src/Hello.cpp
)
# ここのhello::libraryは，hello_libraryの別名をつけるという意味
add_library(hello::library ALIAS hello_library)

target_include_directories(hello_library
    PUBLIC 
        ${PROJECT_SOURCE_DIR}/include
)

############################################################
# Create an executable
############################################################

# Add an executable with the above sources
add_executable(hello_binary
    src/main.cpp
)

# 動的ライブラリと静的ライブラリのリンク方法は同じである．
target_link_libraries( hello_binary
    PRIVATE 
        hello::library
)
