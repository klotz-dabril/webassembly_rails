#! /bin/sh
#
# build.sh
#
#


emcc \
	-O0 \
	-s WASM=1 \
	-s EXTRA_EXPORTED_RUNTIME_METHODS='["cwrap"]' \
	-o fib.js \
	-s MODULARIZE=1 -s 'EXPORT_NAME="Fib"' \
	fib.c

