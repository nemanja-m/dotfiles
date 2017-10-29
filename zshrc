# Set zsh theme. Set to "random" to load random theme each time
# oh-my-zsh is loaded
ZSH_THEME="amuse"

ZSH=$HOME/.oh-my-zsh

plugins=(git ruby elixir sudo ssh-agent)

export SSH_KEY_PATH="~/.ssh/id_rsa"
export PATH=$HOME/bin:$PATH
export PATH=$HOME/usr/local/bin:$PATH
export PATH=$HOME/.rbenv/bin:$PATH

#Cuda toolkit
export CUDA_HOME=/usr/local/cuda-8.0
export LD_LIBRARY_PATH=$CUDA_HOME/lib64:$LD_LIBRARY_PATH
export PATH=$CUDA_HOME/bin:$PATH

source $ZSH/oh-my-zsh.sh
source ~/.aliases

eval "$(rbenv init -)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Virtualenvwrapper configuration
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Devel
source /usr/local/bin/virtualenvwrapper.sh
