#!/bin/bash

set -e

if [ -d $HOME/.linuxbrew/bin ]
then
    PATH=$HOME/.linuxbrew/bin:$PATH
fi

for i in cmake python3
do
    if ! command -v $i > /dev/null
    then
        echo 'Installing '$i
        brew install $i
    fi
done

