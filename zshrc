ZSH_THEME="amuse"

plugins=(git elixir sudo)

export ZSH=$HOME/.oh-my-zsh
export SSH_KEY_PATH="~/.ssh/id_rsa"
export PATH=$HOME/bin:/usr/local/bin:$PATH

source $ZSH/oh-my-zsh.sh
source ~/.aliases

# Start tmux on terminal open
if which tmux >/dev/null 2>&1; then
  # if no session is started, start a new session
  test -z ${TMUX} && tmux

  # when quitting tmux, try to attach
  while test -z ${TMUX}; do
    tmux attach || break
  done
fi
