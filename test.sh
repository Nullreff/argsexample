#!/bin/bash
rm -rf build
mkdir -p build
cd build
cmake ..
make

./main arg1 arg2 arg3
./main --arg1 arg2 arg3
./main arg1 --arg2 arg3
./main arg1 arg2 --arg3
./main --arg1 --arg2 arg3
./main --arg1 arg2 --arg3
./main arg1 --arg2 --arg3
./main --arg1 --arg2 --arg3
