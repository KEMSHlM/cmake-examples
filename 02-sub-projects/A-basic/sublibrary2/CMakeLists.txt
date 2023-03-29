# Set the project name
project (sublibrary2)

# ヘッダのみのライブラリとして作成される場合，cmakeはINTERFACEを指定することで，ビルド出力を伴わないターゲットを作成することができる．
add_library(${PROJECT_NAME} INTERFACE)
add_library(sub::lib2 ALIAS ${PROJECT_NAME})

target_include_directories(${PROJECT_NAME}
    INTERFACE
        ${PROJECT_SOURCE_DIR}/include
)
