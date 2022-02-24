#!/bin/sh

cd $(dirname "$0")

echo "Build from source..." && make

echo "Start exploit! This might take some while..."

until ./exploit
do
    echo "--------------------------------"
    sleep 1
done