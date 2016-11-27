#
# History
#

# Entries beginning with space aren't added into history, and duplicate
# entries will be erased (leaving the most recent entry).
export HISTCONTROL=ignoreboth:erasedups
shopt -s histappend
# export HISTCONTROL="ignorespace:erasedups"
# Give history timestamps.
# export HISTTIMEFORMAT="[%F %T] "
# Lots o' history.
export HISTSIZE=100000
export HISTFILESIZE=100000

# export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"
