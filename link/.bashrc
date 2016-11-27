export DOTFILES=~/.dotfiles

for file in $DOTFILES/source/.[!.]*; do
    source "$file"
done;
unset file;

# Case-insensitive globbing (used in pathname expansion)
#shopt -s nocaseglob;


# Autocorrect typos in path names when using `cd`
#shopt -s cdspell;

export WORKON_HOME=$HOME/.virtualenvs
# export PROJECT_HOME=$HOME/Devel
export VIRTUALENVWRAPPER_SCRIPT=/usr/local/bin/virtualenvwrapper.sh
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3
source /usr/local/bin/virtualenvwrapper_lazy.sh

export HOMEBREW_GITHUB_API_TOKEN="9dd967b7633d8cb84502095992cbbb9ba4f31142"

# go 
export GOPATH=$HOME/go
