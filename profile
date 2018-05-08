# Pretty prompt with git info
export GITAWAREPROMPT=~/.bash/git-aware-prompt
source $GITAWAREPROMPT/main.sh
export PS1="\[\e[1;34m\][\$(date +%H:%M:%S)]\[\e[1;32m\] \[\e[1;35m\]\w \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\[\e[1;34m\]\n\$\[\e[0m\] "

# colour ls
export CLICOLOR=

# Colour grep
export GREP_OPTIONS="--color=auto"

# Homebrew bash completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# Goodies from https://github.com/mrzool/bash-sensible/blob/master/sensible.bash

# Append to the history file, don't overwrite it
shopt -s histappend

# Save multi-line commands as one command
shopt -s cmdhist

# Huge history. Doesn't appear to slow things down, so why not?
HISTSIZE=500000
HISTFILESIZE=100000

# Avoid duplicate entries
HISTCONTROL="erasedups:ignoreboth"

# Useful timestamp format
HISTTIMEFORMAT='%F %T '
