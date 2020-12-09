# Limit number of lines and entries in the history.
export HISTFILESIZE=50000
export HISTSIZE=50000

# Add a timestamp to each command.
export HISTTIMEFORMAT="%Y/%m/%d %H:%M:%S:   "

# Duplicate lines and lines starting with a space are not put into the history.
export HISTCONTROL=ignoreboth

# Append to the history file, don't overwrite it.
shopt -s histappend

# Ensure $LINES and $COLUMNS always get updated.
shopt -s checkwinsize

# Do not blindly execute historical commands with !, !!, and !?
shopt -s histverify

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# Load functions if they exist.
[ -f "$HOME/.bash_functions" ] && source "$HOME/.bash_functions"

# Load aliases if they exist.
[ -f "$HOME/.aliases" ] && source "$HOME/.aliases"

# Colors!
export PS1="\[\033[38;5;11m\]\u\[$(tput sgr0)\]\[\033[38;5;15m\]@\[$(tput sgr0)\]\[\033[38;5;9m\]\h\[$(tput sgr0)\]\[\033[38;5;15m\]{\A}\[$(tput sgr0)\]\[\033[38;5;6m\][\w]:\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"
export GREP_OPTIONS='--color=auto'

# Welcome
uptime
who
