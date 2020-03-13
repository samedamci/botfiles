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
source ~/.config/zsh/plugins/zsh-git-prompt/zshrc.sh
#export PROMPT="%B%F{blue}%~ %b%f$ "
export PROMPT=' %F{#299b9b}%~ %f
[%B%F{red}%?%f%b]%F{#299b9b}%B>%b%f '
export RPROMPT='$(git_status)'

function git_status() {
	ref=$(git symbolic-ref --quiet --short HEAD 2> /dev/null || git rev-parse --short HEAD 2> /dev/null)
	if [ $? -eq 0 ]; then
		echo -n "on %B%F{magenta}$ref"
		[[ $(git status --short | wc -l) -ne 0 ]] && echo -n "%F{yellow}*"
	fi
}

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


ZSH_HIGHLIGHT_STYLES[default]='none'
ZSH_HIGHLIGHT_STYLES[unknown-token]='bg=red'
ZSH_HIGHLIGHT_STYLES[reserved-word]='fg=yellow'
ZSH_HIGHLIGHT_STYLES[alias]='fg=cyan'
ZSH_HIGHLIGHT_STYLES[builtin]='fg=cyan'
ZSH_HIGHLIGHT_STYLES[function]='fg=cyan'
ZSH_HIGHLIGHT_STYLES[command]='fg=cyan'
ZSH_HIGHLIGHT_STYLES[precommand]='none'
ZSH_HIGHLIGHT_STYLES[commandseparator]='none'
ZSH_HIGHLIGHT_STYLES[hashed-command]='fg=blue'
ZSH_HIGHLIGHT_STYLES[path]='none'
ZSH_HIGHLIGHT_STYLES[path_prefix]='none'
ZSH_HIGHLIGHT_STYLES[path_approx]='fg=yellow'
ZSH_HIGHLIGHT_STYLES[globbing]='fg=green'
ZSH_HIGHLIGHT_STYLES[history-expansion]='fg=green'
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]='fg=magenta'
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]='fg=red'
ZSH_HIGHLIGHT_STYLES[back-quoted-argument]='none'
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]='fg=red'
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]='fg=red'
ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]='fg=cyan'
ZSH_HIGHLIGHT_STYLES[back-double-quoted-argument]='fg=cyan'
ZSH_HIGHLIGHT_STYLES[assign]='none'
