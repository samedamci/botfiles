#               _
#     ____ ___ | |__
#    |_  // __|| '_ \ 
#     / / \__ \| | | |
#    /___||___/|_| |_|

#~~~~~~~~~~~
# Oh-My-ZSH
#~~~~~~~~~~~
export ZSH="/home/wiktor/.oh-my-zsh"
#source ${(q-)PWD}/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

#~~~~~~~
# Theme
#~~~~~~~
ZSH_THEME="bira"

#~~~~~~~~~
# Plugins
#~~~~~~~~~
plugins=(
	git
	zsh-syntax-highlighting
	vi-mode
	command-not-found
)

source $ZSH/oh-my-zsh.sh

#~~~~~~~~~
# Aliases
#~~~~~~~~~
alias vi="nvim"
alias zshconfig="vi ~/.zshrc"
alias ohmyzsh="vi ~/.oh-my-zsh"
alias uwu="sudo"
alias owo="yay"
alias ncm="ncmpcpp"
alias mutt='neomutt'
