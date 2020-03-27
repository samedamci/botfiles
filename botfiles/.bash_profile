#!/usr/bin/env bash
#    
#                               ████ ██  ██        
#     ██████                   ░██░ ░░  ░██        
#    ░██░░░██ ██████  ██████  ██████ ██ ░██  █████ 
#    ░██  ░██░░██░░█ ██░░░░██░░░██░ ░██ ░██ ██░░░██
#    ░██████  ░██ ░ ░██   ░██  ░██  ░██ ░██░███████
#    ░██░░░   ░██   ░██   ░██  ░██  ░██ ░██░██░░░░ 
#    ░██     ░███   ░░██████   ░██  ░██ ███░░██████
#    ░░      ░░░     ░░░░░░    ░░   ░░ ░░░  ░░░░░░ 

#~~~~~~~~~~~~~~
# Default Apps
#~~~~~~~~~~~~~~
export EDITOR="nvim"
export BROWSER="firefox"
export TERMINAL="st"

#~~~~~~
# PATH
#~~~~~~
export NPM_PACKAGES="$HOME/.yarn/bin/"
export PATH="$PATH:$HOME/Dotfiles:$HOME/.local/bin:$NPM_PACKAGES"

export SCRD=$HOME/.scripts/
