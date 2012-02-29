bindkey -v
bindkey '^R' history-incremental-search-backward


[ -f $HOME/.Env ] && . $HOME/.Env

# Setting PATH for MacPython 2.6
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.6/bin:${PATH}"
export PATH

PS1="%B(er%?) [%n@%m:%~] %#%b "
