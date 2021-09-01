#!/bin/bash

rm -rf ./publish
mkdir -p ./publish

cargo build --release --target-dir ./publish