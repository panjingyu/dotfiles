#!/bin/bash

# set -e

for i in cmake python3
do
    if ! command -v $i > /dev/null
    then
        brew install $i
    fi
done

