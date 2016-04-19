#
# ~/.bashrc
#
#
# oddly minimal, will grow possibly

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias fuck='sudo $(fc -ln -1)'
PS1='[\u@\h \W]\$ '
