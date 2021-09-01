#!/bin/bash

rm -rf ./publish
mkdir -p ./publish

rustup target add x86_64-unknown-linux-musl
cargo build --target x86_64-unknown-linux-musl --release --target-dir ./publish