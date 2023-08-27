 # ~/.bashrc: executed by bash(1) for non-login shells.
# See /usr/share/doc/bash/examples/bashrc for examples.

# If you need to change the execution path for some commands, you can
# do it here. For example, to add the directory containing your personal
# bash functions to the execution path, add the following line:
#
# PATH=$PATH:$HOME/.bash_functions

# You can also add aliases here. For example, to create an alias for the
# `ls` command that shows hidden files, add the following line:
#
# alias ls='ls -a'

# The following lines set up the prompt to include the current directory
# and the user name.

PS1='[\u@\h] \w\$ '

# The following lines check the window size after each command and, if
# necessary, update the values of LINES and COLUMNS. This ensures that
# the terminal output is always properly formatted.

shopt -s checkwinsize

# The following lines load the colors for the bash prompt.

if [ -f /etc/bash.bashrc ]; then
  . /etc/bash.bashrc
fi
