# Path to your oh-my-zsh installation.
export ZSH=/home/nemanja/.oh-my-zsh

ZSH_THEME="amuse"

plugins=(git elixir sudo)

source $ZSH/oh-my-zsh.sh

# Aliases
alias vim="nvim"
alias tmux="env TERM=xterm-256color tmux"
alias zshconfig="nvim ~/.zshrc"
alias vcfg="nvim ~/.config/nvim/init.vim"
alias ohmyzsh="nvim ~/.oh-my-zsh"

# Functions
function t() { tree -L ${1:-"1"}; }

export SSH_KEY_PATH="~/.ssh/id_rsa"
export PATH=$HOME/bin:/usr/local/bin:$PATH
