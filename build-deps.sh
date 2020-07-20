#!/bin/zsh
SCRIPT=$(realpath "$0")
SCRIPTPATH=$(dirname "$SCRIPT")
cd "$SCRIPTPATH"

apt-get install -y make automake autoconf libtool flex bison  \
    pkg-config libssl-dev libxml2-dev python-dev libaio-dev       \
    libibverbs-dev librdmacm-dev libreadline-dev liblvm2-dev      \
    libglib2.0-dev liburcu-dev libcmocka-dev libsqlite3-dev       \
    libacl1-dev uuid-dev libasan6
