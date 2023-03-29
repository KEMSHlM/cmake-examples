# 前回と異なり，mainとhelloを区別して，別々にビルドしている．
# あと改行されてるところがいくつかあるが，これはみやすくするためにしているみたい．
cmake_minimum_required(VERSION 3.5)

project(hello_library)

############################################################
# Create a library
############################################################

# 静的なライブラリを作成する
# ここのSTATICは，動的にリンクするのではなく，静的にリンクするという意味らしい．
add_library(hello_library STATIC 
    src/Hello.cpp
)

# ここのPUBLICは，このライブラリを使う側にもincludeディレクトリを見せるという意味らしい．
target_include_directories(hello_library
    PUBLIC 
        ${PROJECT_SOURCE_DIR}/include
)

############################################################
# Create an executable
############################################################

# バイナリを作成する
add_executable(hello_binary 
    src/main.cpp
)

# binaryとlibraryをリンクする
# ここのPRIVATEは，このライブラリを使う側には見せないという意味らしい．
target_link_libraries( hello_binary
    PRIVATE 
        hello_library
)
