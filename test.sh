#!/bin/bash

rm -rf build
mkdir -p build
cd build

gcc -c ../printargs.c -o printargs.o -fPIC
ar rcs libprintargs.a printargs.o
rustc -g ../main.rs -L ./

./main arg1 arg2 arg3
./main --arg1 arg2 arg3
./main arg1 --arg2 arg3
./main arg1 arg2 --arg3
./main --arg1 --arg2 arg3
./main --arg1 arg2 --arg3
./main arg1 --arg2 --arg3
./main --arg1 --arg2 --arg3
