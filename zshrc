# Set zsh theme. Set to "random" to load random theme each time
# oh-my-zsh is loaded
ZSH_THEME="amuse"

ZSH=$HOME/.oh-my-zsh

plugins=(
  git
  sudo
  ssh-agent
  tmux
  virtualenvwrapper
  zsh-syntax-highlighting
)

ZSH_TMUX_AUTOSTART=true

# virtualenvwrapper
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/code

export SSH_KEY_PATH="~/.ssh/id_rsa"
export PATH=$HOME/bin:/usr/local/bin:$PATH

source ~/.aliases
source $ZSH/oh-my-zsh.sh
