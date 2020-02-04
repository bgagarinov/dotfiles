bindkey -v
bindkey '^R' history-incremental-search-backward

# Use local uncommon environment file if needed
[ -f $HOME/.Env ] && . $HOME/.Env

# Setting PATH for pip environment
PATH="${HOME}/Library/Python/2.7/bin":${PATH} # for 2.7 version
PATH="${HOME}/Library/Python/3.7/bin":${PATH} # for 3.7 version
PATH="/Library/Frameworks/Python.framework/Versions/3.8":${PATH} # for 3.8 version, from http://python.org

# Setting for iTerm imgcat integration
PATH="${HOME}/.iterm2:${PATH}"

PATH="/usr/local/bin:${PATH}"

export PATH
