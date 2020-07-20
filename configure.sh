#!/bin/zsh
SCRIPT=$(realpath "$0")
SCRIPTPATH=$(dirname "$SCRIPT")
cd "$SCRIPTPATH"

./configure \
    --without-libtirpc \
    --enable-debug \
    --enable-gnfs \
    --enable-asan
