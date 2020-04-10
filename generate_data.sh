#!/usr/bin/env sh

mkdir -p data/myuser

cd data/myuser

dd if=/dev/urandom of=1MB bs=1048576 count=1
dd if=/dev/urandom of=10MB bs=1048576 count=10
dd if=/dev/urandom of=100MB bs=1048576 count=100

cd -
