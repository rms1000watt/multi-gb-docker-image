#!/usr/bin/env bash

mkdir data

if [ ! -f "data/0-4GB.txt" ]; then
  dd if=/dev/urandom of="data/0-4GB.txt" count=4096 bs=1024000
fi

for i in {1..10}; do
  mkdir "data/$i"
  for j in {1..600}; do
    dd if=/dev/urandom of="data/$i/$j-64KB.txt" count=64 bs=1024
  done
done
