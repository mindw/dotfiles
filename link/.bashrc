export DOTFILES=~/.dotfiles

for file in $DOTFILES/source/.[!.]*; do
    source "$file"
done;
unset file;

# Case-insensitive globbing (used in pathname expansion)
#shopt -s nocaseglob;

# Append to the Bash history file, rather than overwriting it
shopt -s histappend;

# Autocorrect typos in path names when using `cd`
#shopt -s cdspell;

# Setting PATH for Python 3.5
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
export PATH

export WORKON_HOME=$HOME/.virtualenvs
# export PROJECT_HOME=$HOME/Devel
export VIRTUALENVWRAPPER_SCRIPT=/Library/Frameworks/Python.framework/Versions/3.5/bin/virtualenvwrapper.sh
export VIRTUALENVWRAPPER_PYTHON=/Library/Frameworks/Python.framework/Versions/3.5/bin/python3
source /Library/Frameworks/Python.framework/Versions/3.5/bin/virtualenvwrapper_lazy.sh
