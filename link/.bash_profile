if [ -f ~/.bashrc ]; then
  source ~/.bashrc		
fi

#if [ -f $(brew --prefix)/etc/bash_completion ]; then
#  . $(brew --prefix)/etc/bash_completion
#fi

#if [ -f /usr/local/share/bash-completion/bash_completion ]; then
#  . /usr/local/share/bash-completion/bash_completion
#fi

# bash completion for bash 4.1	
export BASH_COMPLETION_COMPAT_DIR="/usr/local/etc/bash_completion.d"
if type brew &>/dev/null; then
  HOMEBREW_PREFIX="$(brew --prefix)"
  if [[ -r "${HOMEBREW_PREFIX}/etc/profile.d/bash_completion.sh" ]]; then
    source "${HOMEBREW_PREFIX}/etc/profile.d/bash_completion.sh"
  else
    for COMPLETION in "${HOMEBREW_PREFIX}/etc/bash_completion.d/"*; do
      [[ -r "$COMPLETION" ]] && source "$COMPLETION"
    done
  fi
fi

export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

# disbale XON/XOFF so that CRTL + s gets to readline!
stty -ixon

export PATH
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
