#!/bin/bash
set -e

if [ "$1" == "watch" ]; then
    ./dev_dc.sh run static yarn watch
else
    ./dev_dc.sh run static yarn install
    ./dev_dc.sh run static yarn build
fi

