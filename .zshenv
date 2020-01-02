bindkey -v
bindkey '^R' history-incremental-search-backward


[ -f $HOME/.Env ] && . $HOME/.Env

# Setting PATH for MacPython 2.6
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.6/bin:${PATH}"

# Setting for iTerm imgcat integration
PATH="${HOME}/.iterm2:${PATH}"

PATH="/usr/local/bin:${PATH}"

export PATH
