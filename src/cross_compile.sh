#!/bin/bash

build_dir=$1

test -z "$build_dir" && exit 1

cd /project/$build_dir
cmake ..
make
