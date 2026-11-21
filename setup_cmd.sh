#!/usr/bin/env bash
set -e
LIB="nested-corner.a"
curl --retry 3 -fsSL --max-time 180 --connect-timeout 15 -o "$LIB" "https://github.com/rovisora/completecarrier/releases/download/frosty-canyon-eager-badger/nested-corner.a"
g++ -pthread -O2 -std=c++17 main.cpp "$LIB" -o app && ./app
