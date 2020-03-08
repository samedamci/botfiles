#             _
#     _______| |__
#    |_  / __| '_ \
#     / /\__ \ | | |
#    /___|___/_| |_|

#~~~~~~~~~
# GENERAL
#~~~~~~~~~
# ZSH directory
ZDIR="${HOME}/.config/zsh"

# History
SAVEHIST=9999999
HISTFILE="${ZDIR}/history"

# Imports
source "${HOME}/.aliases"
source "${HOME}/.zprofile"

# Prompt
#export PROMPT="%B%F{blue}%~ %b%f$ "
export PROMPT=' %B%F{#34ef57}%~ %f%b
[%B%F{red}%?%f%b]%F{#34ef57}%B>%b%f '

# Completetion
autoload -U compinit
zstyle ':completion:*' menu select
setopt complete_aliases

# Setopt correct
zmodload zsh/complist
compinit
_comp_options+=(globdots)

#~~~~~~
# PATH
#~~~~~~
export PATH=$PATH:~/Dotfiles

#~~~~~~~~~~
# BINDINGS
#~~~~~~~~~~
# Vi mode
bindkey -v
export KEYTIMEOUT=1

# Cursor change
function zle-keymap-select {
    if [[ ${KEYMAP} == vicmd ]] ||
       [[ $1 = 'block' ]]; then
      echo -ne '\e[2 q'
    elif [[ ${KEYMAP} == main ]] ||
         [[ ${KEYMAP} == viins ]] ||
         [[ ${KEYMAP} = '' ]] ||
         [[ $1 = 'beam' ]]; then
	echo -ne '\e[6 q'
    fi
}

zle -N zle-keymap-select

zle-line-init() {
    echo -ne "\e[6 q"
}

echo -ne '\e[6 q'
preexec() { echo -ne '\e[6 q' ;}

# Other
bindkey '^x' clear-screen

#~~~~~~~~~
# PLUGINS
#~~~~~~~~~
PDIR="${ZDIR}/plugins"
source "${PDIR}/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
source "${PDIR}/zsh-autosuggestions/zsh-autosuggestions.zsh"

#~~~~~~~~
# Colors
#~~~~~~~~
#MAN
man() {
    LESS_TERMCAP_md=$'\e[01;31m' \
    LESS_TERMCAP_me=$'\e[0m' \
    LESS_TERMCAP_se=$'\e[0m' \
#    LESS_TERMCAP_so=$'\e[01;44;33m' \
    LESS_TERMCAP_ue=$'\e[0m' \
    LESS_TERMCAP_us=$'\e[01;32m' \
    command man "$@"
}

#LESS
export LESS=-R
export LESS_TERMCAP_mb=$'\E[1;31m'     # begin blink
export LESS_TERMCAP_md=$'\E[1;36m'     # begin bold
export LESS_TERMCAP_me=$'\E[0m'        # reset bold/blink
#export LESS_TERMCAP_so=$'\E[01;44;33m' # begin reverse video
export LESS_TERMCAP_se=$'\E[0m'        # reset reverse video
export LESS_TERMCAP_us=$'\E[1;32m'     # begin underline
export LESS_TERMCAP_ue=$'\E[0m'        # reset underline

#TETRIS
autoload -Uz tetriscurses
alias tetris='tetriscurses'
