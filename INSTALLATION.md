# Installation

Install dependencies:
```bash
yay -S polybar termite ttf-dejavu-ib wget
```

Install oh-my-zsh:
```bash
sh -c "$(wget -O- https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

Install zsh-syntax-highlighting plugin to oh-my-zsh:
```bash
cd ~/oh-my-zsh/plugins
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
```

Copy configs:
```bash
cp .zshrc ~
cp -r .config ~
```

## Edit i3 config
To use i3 'u' should edit the config file to customize your keybinds, programs and other things. If 'u' want to use my config 'u' can do this. 
