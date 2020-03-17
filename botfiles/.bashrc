#
#     ██                        ██     
#    ░██                       ░██     
#    ░██       ██████    ██████░██     
#    ░██████  ░░░░░░██  ██░░░░ ░██████ 
#    ░██░░░██  ███████ ░░█████ ░██░░░██
#    ░██  ░██ ██░░░░██  ░░░░░██░██  ░██
#    ░██████ ░░████████ ██████ ░██  ░██
#    ░░░░░    ░░░░░░░░ ░░░░░░  ░░   ░░ 

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Vi mode
set -o vi

# Load global shell config
source $HOME/.shellrc

# Prompt
export PS1="\033[0;32m\h\033[0m in \033[0;36m\w\033[0m\n{\033[0;31m${?}\033[0m}\033[0;36m> \033[0m"
