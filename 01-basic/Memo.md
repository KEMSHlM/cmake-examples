# 01-basic
## Directory Paths
CMakeはメインプロジェクトにサブプロジェクトを構成することができ, メインのプロジェクトがサブのプロジェクトを呼び出し，ビルドすることができる．
そこで，メインプロジェクトとサブプロジェクトを区別するべく，Cmakeにはファイルを見つけるためにいくつかの変数が存在する．
    - CMAKE_SOURCE_DIR
        ソースコードのルートディレクトリ
    - CMAKE_CURRENT_SOURCE_DIR
        サブプロジェクトを実行している際の, 現在のソースコードのディレクトリ.
    - PROJECT_SOURCE_DIR
    - CMAKE_BINARY_DIR
    - CMAKE_CURRENT_BINARY_DIR
    - PROJECT_BINARY_DIR

- File Paths