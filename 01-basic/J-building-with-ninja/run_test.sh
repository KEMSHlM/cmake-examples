#!/bin/bash
# Travis-ci cmake version doesn't support ninja, so first check if it's supported
ninja_supported=$(cmake --help | grep Ninja)

# ここの-zオプションは，文字列の長さがゼロであるかどうかを判定する．
if [ -z "$ninja_supported" ]; then
    echo "Ninja not supported"
    exit
fi

# Ninjaは高速で小型のビルドシステムで，実行速度や並列性に優れる．
mkdir -p build.ninja && cd build.ninja && \
    cmake .. -G Ninja && ninja
