# Colour grep
alias grep="grep --color=auto"

# exa instead of ls
alias ls=exa

# Default editor
export EDITOR=micro

# Goodies from https://github.com/mrzool/bash-sensible/blob/master/sensible.bash
# Huge history. Doesn't appear to slow things down, so why not?
HISTSIZE=500000
HISTFILESIZE=100000
# Avoid duplicate entries
HISTCONTROL="erasedups:ignoreboth"
# Useful timestamp format
HISTTIMEFORMAT='%F %T '

# Android SDK
ANDROID_HOME="$HOME/Library/Android/sdk"
PATH="$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools"

# Use Java 8
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_172.jdk/Contents/Home

# nvm
#export NVM_DIR="$HOME/.nvm"
# [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
# [ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion

# go
export PATH=$PATH:~/go/bin

# MySQL
export PATH="/usr/local/opt/mysql-client/bin:$PATH"

if [ -x "$(which termux-info)" ] ; then
  # Run SSH agent for key managment
  eval $(ssh-agent)

  # Start SSH server
  sshd
fi

