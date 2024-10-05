# Initialise homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# Initialise rbenv
eval "$(rbenv init - --no-rehash zsh)"

# Load zsh-autosuggestions plugin
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Short ip alias
alias ip="ipconfig getifaddr en0"

# Neovim always 
alias vim="nvim"
alias vi="nvim"
export EDITOR='nvim'
export VISUAL='nvim'

# Git alias
alias gs="git status"
alias gc="git commit"
alias gd="git diff"
alias gl="git log"
alias gb="git branch"
alias gco="git checkout"
alias lg="lazygit"

# Interactive and verbose
alias cp="cp -iv"
alias mv="mv -iv"
alias rm="rm -iv"

# Colour ls
alias ls="ls -G"

# Config alias
alias rcrefresh="source ~/.zshrc && echo 'refreshed...'"
alias zopen="nvim ~/.zshrc"
alias wopen="nvim ~/.config/wezterm/wezterm.lua"
alias vopen="nvim ~/.config/nvim/init.lua"

# History
HISTFILE=$HOME/.zhistory
SAVEHIST=$1000
HISTSIZE=999
setopt share_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_verify
bindkey '^[[A' history-search-backward
bindkey '^[[B' history-search-forward
