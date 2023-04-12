#!/usr/bin/env bash

BLA=$(sudo lsof -i -P -n | grep LISTEN | grep "sear" | awk '{ print $2 }')

a=0;

for i in ${BLA[@]}; do
sudo kill -9 $i
done

# BLA=$(sudo lsof -i -P -n | grep LISTEN | grep "validator" | awk '{ print $2 }')

# a=0;

# for i in ${BLA[@]}; do
# sudo kill -9 $i
# done