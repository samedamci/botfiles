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
PROMPT='%B%F{blue}%n%F{blue}@%F{blue}%m%f%b in %B%F{green}%~%f%b$ (git_prompt_info)
%(?:$ :%F{red}$ )%f'

ZSH_THEME_GIT_PROMPT_PREFIX=' on %B%F{magenta}'
ZSH_THEME_GIT_PROMPT_SUFFIX='%f%b'
ZSH_THEME_GIT_PROMPT_DIRTY='%F{yellow}*'
ZSH_THEME_GIT_PROMPT_UNTRACKED='%F{yellow}*'
ZSH_THEME_GIT_PROMPT_CLEAN=''

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
alias suvi='sudo -E nvim'
alias ncm="ncmpcpp"
alias mutt='neomutt'

#yay
alias owo="yay"
alias up='yay -Syyu'
