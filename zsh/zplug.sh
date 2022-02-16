#!/bin/bash

# Install Zplug
if [ -z $ZPLUG_HOME ]; then
    curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh
fi