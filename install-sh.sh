#!/bin/zsh
SCRIPT=$(realpath "$0")
SCRIPTPATH=$(dirname "$SCRIPT")
cd "$SCRIPTPATH"

./build-deps.sh
./autogen.sh && \
    ./configure.sh && \
    ./make.sh && \
    systemctl daemon-reload
