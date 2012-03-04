setopt INC_APPEND_HISTORY
setopt HIST_NO_STORE
export HISTFILE=$HOME/.zsh_history
export HISTSIZE=700

setopt HIST_EXPIRE_DUPS_FIRST
export SAVEHIST=500

setopt AUTO_PUSHD
setopt AUTO_CD
setopt PROMPT_SUBST

zmodload zsh/complist
autoload -U compinit && compinit

# Below is completion example, stolen from:
# http://zshwiki.org/home/examples/compquickstart

### Start ###
## If you want zsh's completion to pick up new commands in $path automatically
### comment out the next line and un-comment the following 5 lines
zstyle ':completion:::::' completer _complete _approximate
#_force_rehash() {
#  (( CURRENT == 1 )) && rehash
#  return 1    # Because we didn't really complete anything
#}
#zstyle ':completion:::::' completer _force_rehash _complete _approximate
zstyle -e ':completion:*:approximate:*' max-errors 'reply=( $(( ($#PREFIX + $#SUFFIX) / 3 )) )'
zstyle ':completion:*:descriptions' format "- %d -"
zstyle ':completion:*:corrections' format "- %d - (errors %e})"
zstyle ':completion:*:default' list-prompt '%S%M matches%s'
zstyle ':completion:*' group-name ''
zstyle ':completion:*:manuals' separate-sections true
zstyle ':completion:*:manuals.(^1*)' insert-sections true
zstyle ':completion:*' menu select
zstyle ':completion:*' verbose yes
### End ###

# My initial:
# PS1="%B(er%?) [%n@%m:%~] %#%b "
. $HOME/.zshrc.load
# GIT added:
#PS1='[%n@%m %c$(__git_ps1 " (%s)")]\$ '
PS1='%B(er%?)$(__git_ps1 " (%s)") %#%b '
autoload -U promptinit
promptinit
prompt bart green
