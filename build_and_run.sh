#!/bin/bash

set -e

echo "***Building Rust project***"
cd rust_world
cargo build --release
echo "***Rust project built successfully***"
cd ..

echo "***Compiling Java HelloWorld class***"
cd java_world
javac HelloWorld.java
echo "***Java HelloWorld class compiled successfully***"

echo "***Creating hello_world.jar from HelloWorld.class***"
jar cvf hello_world.jar HelloWorld.class
echo "***hello_world.jar created successfully***"
cd ..

echo "***Running JRuby script***"
cd jruby_world
JRUBY_OPTS="-J-Djava.library.path=../rust_world/target/release" jruby -S hello_world.rb
echo "***JRuby script executed successfully***"
