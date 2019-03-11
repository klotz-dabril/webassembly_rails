#! /bin/sh
#
# build.sh
#
#
em++ \
	-O0 \
	-s WASM=1 \
	--bind \
	-s MODULARIZE=1 -s 'EXPORT_NAME="Fib"' \
	-o fib.js \
	fib.cpp

