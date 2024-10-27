```
   ______   _____  _______ _______ _____        _______ _______
   |     \ |     |    |    |______   |   |      |______ |______
 . |_____/ |_____|    |    |       __|__ |_____ |______ ______|
                                                               
```

Personal dotfiles for Arch GNU/Linux with `hyprland`.

![scr](./screenshot.png)

## Installing

```bash
$ git clone https://github.com/wzykubek/.dotfiles && cd .dotfiles
```
```bash
$ paru -S - < packages.txt
```
```bash
$ stow --adopt */ 
```
```bash
$ git restore .
```

## Software
Category | Item
:--- | :---
bootloader | refind
os | arch
wm | hyprland
bar | waybar
terminal | kitty
shell | zsh
file manager | yazi
runner | rofi-wayland
editor | neovim (nvchad)
notification daemon | mako
screen locker | hyprlock
browser | zen-browser
