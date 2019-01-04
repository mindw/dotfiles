if [ -f ~/.bashrc ]; then
  source ~/.bashrc		
fi

#if [ -f $(brew --prefix)/etc/bash_completion ]; then
#  . $(brew --prefix)/etc/bash_completion
#fi

# bash completion for bash 4.1	
if [ -f /usr/local/share/bash-completion/bash_completion ]; then
  . /usr/local/share/bash-completion/bash_completion
fi

export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

# disbale XON/XOFF so that CRTL + s gets to readline!
stty -ixon

export PATH
