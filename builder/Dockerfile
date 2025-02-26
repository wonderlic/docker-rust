FROM rust:1.85-bullseye
LABEL maintainer="Wonderlic DevOps <DevOps@wonderlic.com>"

RUN apt update \
    && apt install -y --no-install-recommends git build-essential libc++-dev llvm-dev libclang-dev clang wget

# Install sccache to greatly speedup builds
RUN wget https://github.com/mozilla/sccache/releases/download/v0.8.0/sccache-v0.8.0-x86_64-unknown-linux-musl.tar.gz \
    && tar xzf sccache-v0.8.0-x86_64-unknown-linux-musl.tar.gz \
    && mv sccache-v0.8.0-x86_64-unknown-linux-musl/sccache /usr/local/bin/sccache \
    && chmod +x /usr/local/bin/sccache
