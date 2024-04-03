# rust_jruby_interop_experiment

A trivial example of how to call Rust code from JRuby. The Rust code is compiled to a shared library and loaded by the
JVM. [JNI](https://en.wikipedia.org/wiki/Java_Native_Interface) is used to call the Rust code from Java. JRuby loads the
Java library and executes the bytecode on the JVM.

## How To Run
A Dockerfile is included to build a container with all the necessary dependencies. To build the container, run:

```bash
docker run -it -v .:/app jruby_experiment
```

To run the example, execute the following command in the container:

```bash
./build_and_run.sh
```

This will compile the Rust library, build the Java library, and run the JRuby script.