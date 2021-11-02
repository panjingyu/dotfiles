#!/bin/bash

install_homebrew='/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"'

if command -v brew &> /dev/null
then
    while read -p 'Do you want to install Homebrew? [y/n]: ' ans
    do
        case $ans in
            [Yy]* ) eval $install_homebrew; break;;
            [Nn]* ) break;;
            * ) echo 'Please answer yes or no.';;
        esac
    done
fi
