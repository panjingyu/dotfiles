#!/bin/bash

# install omz
if [ ! -z "$ZSH"]; then
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

# install powerlevel10k
P10K=${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
if [ ! -d $P10K ]; then
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $P10K
fi

# install zsh-autosuggestions
ZSH_AS=${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
if [ ! -d $ZSH_AS ]; then
    git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_AS
fi

# install zsh-syntax-highlighting
ZSH_SH=${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
if [ ! -d $ZSH_SH ]; then
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_SH
fi