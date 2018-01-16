# Set zsh theme. Set to "random" to load random theme each time
# oh-my-zsh is loaded
ZSH_THEME="amuse"

ZSH=$HOME/.oh-my-zsh

plugins=(git ruby elixir sudo ssh-agent)

export SSH_KEY_PATH="~/.ssh/id_rsa"
export PATH=$HOME/bin:/usr/local/bin:$PATH

source $ZSH/oh-my-zsh.sh
source ~/.aliases
