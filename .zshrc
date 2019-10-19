#               _
#     ____ ___ | |__
#    |_  // __|| '_ \ 
#     / / \__ \| | | |
#    /___||___/|_| |_|

#~~~~~~~~~~~
# Oh-My-ZSH
#~~~~~~~~~~~
export ZSH="$HOME/.oh-my-zsh"

#~~~~~~~
# Theme
#~~~~~~~
ZSH_THEME='bira'

#~~~~~~~~~
# Plugins
#~~~~~~~~~
plugins=(
	zsh-syntax-highlighting
	vi-mode
	command-not-found
	git-open
	git
)

source $ZSH/oh-my-zsh.sh

#~~~~~~~~~
# Aliases
#~~~~~~~~~
alias vi="nvim"
alias suvi='sudo -E nvim'
alias ncm="ncmpcpp"
alias mutt='neomutt'

#yay
alias owo="yay"
alias up='yay -Syyu'
