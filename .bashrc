if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi

source $HOME/.rvm/scripts/rvm

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
