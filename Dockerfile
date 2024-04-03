FROM debian:buster

# Install necessary packages
RUN apt-get update && \
    apt-get install -y curl git build-essential openjdk-11-jdk-headless ruby-full ruby-bundler && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Install Rust
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

# Add Rust to the PATH
ENV PATH="/root/.cargo/bin:${PATH}"

# Install JRuby
RUN curl -L https://repo1.maven.org/maven2/org/jruby/jruby-dist/9.3.0.0/jruby-dist-9.3.0.0-bin.tar.gz | tar xz -C /opt
ENV PATH="/opt/jruby-9.3.0.0/bin:${PATH}"

WORKDIR /app
VOLUME ["/app"]
CMD ["bash"]
