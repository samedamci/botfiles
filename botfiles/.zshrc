#    
#                    ██     
#                   ░██     
#     ██████  ██████░██     
#    ░░░░██  ██░░░░ ░██████ 
#       ██  ░░█████ ░██░░░██
#      ██    ░░░░░██░██  ░██
#     ██████ ██████ ░██  ░██
#    ░░░░░░ ░░░░░░  ░░   ░░ 

#~~~~~~~~~
# General
#~~~~~~~~~
# zsh directory
ZDIR="${HOME}/.config/zsh"

# history
SAVEHIST=9999999
HISTFILE="${ZDIR}/history"

# imports
source $HOME/.profile
source $HOME/.shellrc

# error message
command_not_found_handler() {
    printf "\nahh shit, command not found\n\033[0;31m(╯°□°)╯︵ ┻━┻\n\n"
	exit 127
}

# prompt
setopt prompt_subst
setopt autocd
PROMPT='%F{green}%m%f in %B%F{#299b9b}%~%f%b $(git_status)
%f%b% {%B%F{red}%?%f%b}%F{#299b9b}%B>%b%f '

function git_status() {
	ref=$(git symbolic-ref --quiet --short HEAD 2> /dev/null || git rev-parse --short HEAD 2> /dev/null)
	if [ $? -eq 0 ]; then
		echo -n "on %B%F{magenta}$ref"
		[[ $(git status --short | wc -l) -ne 0 ]] && echo -n "%F{yellow}*"
	fi
}

# completetion
autoload -U compinit
zstyle ':completion:*' menu select
setopt complete_aliases

zstyle ':completion:*' completer _expand _complete _ignored
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# setopt correct
zmodload zsh/complist
compinit
_comp_options+=(globdots)

#~~~~~~~~~~
# Bindings
#~~~~~~~~~~
# vi mode
bindkey -v
export KEYTIMEOUT=1

# cursor change
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

# other
bindkey '^x' clear-screen

#~~~~~~~~~
# Plugins
#~~~~~~~~~
PDIR="${ZDIR}/plugins"

# zsh-autosuggestions
source "${PDIR}/zsh-autosuggestions/zsh-autosuggestions.zsh"

# zsh-syntax-highlighting
source "${PDIR}/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"

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
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=8'

# tetris easter-egg
autoload -Uz tetriscurses
alias tetris='tetriscurses'
