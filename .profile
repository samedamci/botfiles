#!/bin/sh

# Default Apps
export EDITOR="nvim"
export BROWSER="firefox"
export TERMINAL="st"

export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CONFIG_HOME="$HOME/.config"
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export _Z_DATA="$ZDOTDIR/plugs/z/z"
export INPUTRC="$ZDOTDIR/inputrc"
export XAUTHORITY="$XDG_RUNTIME_DIR/Xauthority"
export GTK2_RC_FILES="$XDG_CONFIG_HOME/gtk-2.0/gtkrc-2.0"
export WGETRC="$XDG_CONFIG_HOME/wget/wgetrc"
export GNUPGHOME="$XDG_DATA_HOME/gnupg"
export LESSHISTFILE="-"

# PATH
export GOPATH=$HOME/.local/go
export NPM_PACKAGES="$HOME/.local/bin/npm/bin"
export PATH="$PATH:.:$HOME/.local/bin/:$HOME/.local/bin/scripts/:$NPM_PACKAGES:$GOROOT/bin:$GOPATH/bin"

# Colors
export LS_COLORS="no=00:fi=00:di=01;34:ln=01;36:pi=40;33:so=00;93:do=00;93:bd=40;33;01:cd=40;33;01:or=40;31;01:mi=01;05;37;41:su=37;41:sg=30;43:ca=30;41:tw=30;42:ow=1;34:st=37;44:ex=01;32:*.tar=01;36:*.tgz=01;36:*.svgz=00;93:*.arj=01;36:*.taz=01;36:*.lzh=01;36:*.lzma=01;36:*.zip=01;36:*.z=01;36:*.Z=01;36:*.dz=01;36:*.gz=01;36:*.bz2=01;36:*.tbz2=01;36:*.bz=01;36:*.tz=01;36:*.deb=01;36:*.rpm=01;36:*.jar=01;36:*.rar=01;36:*.ace=01;36:*.zoo=01;36:*.cpio=01;36:*.7z=01;36:*.rz=01;36:*.jpg=00;93:*.jpeg=00;93:*.gif=00;93:*.bmp=00;93:*.pbm=00;93:*.pgm=00;93:*.ppm=00;93:*.tga=00;93:*.xbm=00;93:*.xpm=00;93:*.tif=00;93:*.tiff=00;93:*.png=00;93:*.mng=00;93:*.pcx=00;93:*.mov=00;93:*.mpg=00;93:*.mpeg=00;93:*.m2v=00;93:*.mkv=00;93:*.ogm=00;93:*.mp4=00;93:*.m4v=00;93:*.mp4v=00;93:*.vob=00;93:*.qt=00;93:*.nuv=00;93:*.wmv=00;93:*.asf=00;93:*.rm=00;93:*.rmvb=00;93:*.flc=00;93:*.avi=00;93:*.fli=00;93:*.gl=00;93:*.dl=00;93:*.xcf=00;93:*.xwd=00;93:*.yuv=00;93:*.svg=00;93:*.aac=00;36:*.au=00;36:*.flac=00;35:*.mid=00;35:*.midi=00;35:*.mka=00;35:*.mp3=00;35:*.mpc=00;35:*.ogg=00;35:*.ra=00;35:*.wav=00;35:*.opus=00;35:"

export FZF_DEFAULT_OPTS='
--color fg:242,hl:65,fg+:15,hl+:108
--color info:108,prompt:109,spinner:108,pointer:168,marker:168
'

# Start X automatic on tty1
[ "$(tty)" = "/dev/tty1" ] && {
  export BG="$(awk '/define bg/ { print $3 }' ~/.config/Xresources)"
  export SBG="$(awk '/define sbg/ { print $3 }' ~/.config/Xresources)"
  export ASBG="$(awk '/define asbg/ { print $3 }' ~/.config/Xresources)"
  export FG="$(awk '/define fg/ { print $3 }' ~/.config/Xresources)"
  export SFG="$(awk '/define sfg/ { print $3 }' ~/.config/Xresources)"
  export SEL="$(awk '/define sel/ { print $3 }' ~/.config/Xresources)"
  export ASEL="$(awk '/define asel/ { print $3 }' ~/.config/Xresources)"
  export C12="$(awk '/color12/ { print $2 }' ~/.config/Xresources)"
  eval "$(ssh-agent)"
  ! pgrep -x Xorg >/dev/null && exec startx
}

# Other
export _JAVA_AWT_WM_NONREPARENTING=1
export GPG_TTY=$(tty)
if [ -e /home/samedamci/.nix-profile/etc/profile.d/nix.sh ]; then . /home/samedamci/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
