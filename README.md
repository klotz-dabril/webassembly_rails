# README

Exploration with webassembly inside a rails app.


The example shows the connection of c++ objects compiled with emscripten
running on the client side and interacting with javascript.

The compilation is done by the build.sh script inside the
app/assets/javascripts/fib folder.

The c++ code exports a class called Fib with a constructor, instance
methods, properties and a class method.
