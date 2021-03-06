# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
ZSH_THEME="mysteeef"

# Uncomment the following line to change how often to auto-update (in days).
 export UPDATE_ZSH_DAYS=13

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="false"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git git-extras brew meteor osx pip pyenv python sudo zsh-syntax-highlighting virtualenv virtualenvwrapper vscode)

# User configuration
export PATH=/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:$HOME/Library/:$PATH
# SSH-tools
export PATH=$HOME/.local/bin:$HOME/bin:$PATH
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# Prompt Color
# autoload -U colors && colors
# PS1="%{$fg[yellow]%}%n%{$reset_color%}@%{$fg[cyan]%}%m %{$fg[yellow]%}%~ %{$reset_color%}%% "

# Virtualenvwrapper
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3
export VIRTUALENVWRAPPER_VIRTUALENV=/usr/local/bin/virtualenv
source /usr/local/bin/virtualenvwrapper.sh

# Aliases
alias mkdir="mkdir -p"
alias mv="mv -iv"
alias cp="cp -iv"
alias cpdir="cp -Riv"
alias rm="rm -v"
alias del="mv $1 ~/.unixtrash"
alias rd="rm -rv"
alias hd="head"
alias tl="tail"
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias bashconfig="vim ~/.bash_profile"
alias sshconfig="vim ~/.ssh/config"
alias subl='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'
alias fuck='eval $(thefuck $(fc -ln -1 | tail -n 1)); fc -R'
alias FU='fuck'
alias portal="python ~/inf_portal_api/portal/cli/portal.py"
alias awsbastion="ssh -i '/Users/soham.roy/.ssh/id_rsa' centos@52.33.38.7"
alias rdc="rsync -avz -f'- .??*/'"
alias whoami="echo 'I AM GROOT'"
alias splunk="/Applications/Splunk/bin/splunk"
alias python="/usr/local/bin/python3"
alias pip="/usr/local/bin/pip3"

# Functions
function hide(){
    defaults write com.apple.finder AppleShowAllFiles -bool false
    killall Finder
}
function show(){
    defaults write com.apple.finder AppleShowAllFiles -bool true
    killall Finder
}

#cecho
source /usr/local/sbin/cecho.sh

# bind UP and DOWN arrow keys
# zmodload zsh/terminfo
# bind UP and DOWN arrow keys
# bindkey '^[[A' history-substring-search-up
# bindkey '^[[B' history-substring-search-down
# zmodload zsh/terminfo

# SSH wrappers
function sshwrap(){
    ssh -t -L $2\:localhost\:$2 $1 ssh -L $2\:localhost\:22 $3
}

function connect(){
    case $1 in
        "adm")sshwrap pdxeng 3001 adm0032 ;;
    esac
}

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# Load RVM into a shell session *as a function*
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# ChefDK
alias chefdk-1.6.11='sudo rm /opt/chefdk && sudo ln -s /opt/chefdk-1.6.11 /opt/chefdk && rm ~/.berkshelf/config.json && ln -s ~/.berkshelf/config-opseng.json ~/.berkshelf/config.json'
alias chefdk-2.5.3='sudo rm /opt/chefdk && sudo ln -s /opt/chefdk-2.5.3 /opt/chefdk && rm ~/.berkshelf/config.json && ln -s ~/.berkshelf/config-chef-cookbooks-dev.json ~/.berkshelf/config.json'
alias chefdk='unset gem && eval "$(/opt/chefdk/bin/chef shell-init ${SHELL##*/})"'
alias wd-server='sudo rm /opt/chefdk && sudo ln -s /opt/chefdk-1.6.11 /opt/chefdk && rm ~/.berkshelf/config.json && ln -s ~/.berkshelf/config-opseng.json ~/.berkshelf/config.json && rm -rf ~/.berkshelf/cookbooks'
alias wd-base='sudo rm /opt/chefdk && sudo ln -s /opt/chefdk-1.6.11 /opt/chefdk && rm ~/.berkshelf/config.json && ln -s ~/.berkshelf/config-chef-cookbooks-dev.json ~/.berkshelf/config.json && ~/.berkshelf/cookbooks'
[ -f "${GHCUP_INSTALL_BASE_PREFIX:=$HOME}/.ghcup/env" ] && source "${GHCUP_INSTALL_BASE_PREFIX:=$HOME}/.ghcup/env"
