#
# ~/.bashrc
#
#
# oddly minimal, will grow possibly

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PATH=$PATH:$HOME/.bin/



alias ls='ls --color=auto'
alias fuck='sudo $(fc -ln -1)'
alias spotify='spotify --force-device-scale-factor=1.0000001'
PS1='[\u@\h \W]\$ '
