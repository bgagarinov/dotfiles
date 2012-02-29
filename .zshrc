setopt INC_APPEND_HISTORY
setopt HIST_NO_STORE
export HISTFILE=$HOME/.zsh_history
export HISTSIZE=700

setopt HIST_EXPIRE_DUPS_FIRST
export SAVEHIST=500

setopt AUTO_PUSHD

autoload -U compinit
compinit
