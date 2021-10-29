# oh-my-zsh configuration

ZSH="${HOME}/.oh-my-zsh" # Path to your oh-my-zsh installation.
ZSH_THEME="jpan"
HIST_STAMPS="yyyy-mm-dd"
plugins=(git extract)
source $ZSH/oh-my-zsh.sh


## User Configurations

export LC_ALL=en_US.UTF-8  
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
    export EDITOR='vim'
else
    export EDITOR='mvim'
fi


### Environment variables

export PATH=/usr/local/sbin:$PATH

# GPG
export GPG_TTY=$(tty)
if [ -f "${HOME}/.gpg-agent-info" ]; then
    . "${HOME}/.gpg-agent-info"
    export GPG_AGENT_INFO
    export SSH_AUTH_SOCK
fi
# Start the gpg-agent if not already running
if ! pgrep -x -u "${USER}" gpg-agent >/dev/null 2>&1; then
    gpg-connect-agent /bye >/dev/null 2>&1
fi

