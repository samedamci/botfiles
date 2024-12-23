# vim:foldmethod=marker

#: General {{{

HISTFILE=~/.histfile
HISTSIZE=100000
SAVEHIST=100000
unsetopt beep
bindkey -v

#: }}}

#: Prompt {{{

autoload -Uz vcs_info
precmd() { vcs_info; echo -ne "\033]0;$(pwd | sed -e "s;^$HOME;~;")\a" }
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' unstagedstr '*'
zstyle ':vcs_info:*' stagedstr '+'
zstyle ':vcs_info:git:*' formats '%F{red}%b%f%F{yellow}%u%c%f '
zstyle ':vcs_info:git:*' actionformats '(%b|%a%u%c)'

setopt correct prompt_subst

export PROMPT='%F{blue}%~%f ${vcs_info_msg_0_}%F{green}$%f '

command_not_found_handler() {
  printf "\nahh shit, command not found\n\033[0;31m(╯°□°)╯︵ ┻━┻\n\n"
	exit 127
}

#: }}}

#: Aliases {{{

alias vi='nvim'
alias vim='nvim'
alias ssh='kitten ssh'
alias sudo='sudo '
alias -g hrep='kitty +kitten hyperlinked_grep'
alias dotfiles='nvim +"cd $HOME/.dotfiles" +"NvimTreeFocus"'

#: }}}

#: Variables {{{

export PATH="$PATH:.:$HOME/.local/bin/scripts/:$HOME/.local/bin/"
export EDITOR='nvim'
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"

#: }}}

#: Colors {{{

alias diff='diff --color=auto'
alias -g grep='grep --color=auto'
alias ip='ip -color=auto'
alias ls='eza --color=always --hyperlink'
alias -g cat='bat'
alias -g -- -h='-h 2>&1 | bat --language=help --style=plain'
alias -g -- --help='--help 2>&1 | bat --language=help --style=plain'
export LESS='-R --use-color -Dd+r$Du+b$'
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# fzf
export FZF_DEFAULT_OPTS="
	--color=fg:#908caa,bg:#191724,hl:#ebbcba
	--color=fg+:#e0def4,bg+:#26233a,hl+:#ebbcba
	--color=border:#403d52,header:#31748f,gutter:#191724
	--color=spinner:#f6c177,info:#9ccfd8
	--color=pointer:#c4a7e7,marker:#eb6f92,prompt:#908caa"

#: }}}

#: Bindings {{{

# CTRL+P
iparu_run() { iparu; zle redisplay }
zle -N iparu_run 
bindkey -M vicmd "^p" iparu_run
bindkey -M viins "^p" iparu_run

# CTRL+E
yazi_run() { yazi; zle redisplay }
zle -N yazi_run
bindkey -M vicmd "^e" yazi_run
bindkey -M viins "^e" yazi_run

#: }}}

#: Completion {{{

fpath+=~/.zfunc

zstyle ':completion:*' auto-description '%d'
zstyle ':completion:*' completer _complete _ignored #_approximate
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' matcher-list 'm:{[:lower:]}={[:upper:]}'
# zstyle ':completion:*' menu select=2 search
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' verbose true

# fzf-tab
zstyle ':completion:*:git-checkout:*' sort false
zstyle ':completion:*:descriptions' format '[%d]'
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'eza -1 --color=always $realpath'
zstyle ':fzf-tab:*' use-fzf-default-opts yes
zstyle ':fzf-tab:*' switch-group 'ctrl-h' 'ctrl-l'

zstyle :compinstall filename '/home/wiktor/.zshrc'
autoload -Uz compinit; compinit

#: }}}

#: Plugins {{{

source ~/.local/share/zsh/plugins/fzf-tab/fzf-tab.zsh
source ~/.local/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

#: }}}
