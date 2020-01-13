bindkey -v
bindkey '^R' history-incremental-search-backward

# Use local uncommon environment file if needed
[ -f $HOME/.Env ] && . $HOME/.Env

# Setting PATH for pip environment
PATH="/Users/boris_gagarinov/Library/Python/2.7/bin":${PATH}

# Setting for iTerm imgcat integration
PATH="${HOME}/.iterm2:${PATH}"

PATH="/usr/local/bin:${PATH}"

export PATH
