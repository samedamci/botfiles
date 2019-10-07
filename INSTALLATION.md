# Basic
## Install dependencies
```bash
yay -S polybar st ttf-dejavu-ib wget neovim qutebrowser
```
## Install oh-my-zsh
```bash
sh -c "$(wget -O- https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```
## Install zsh-syntax-highlighting plugin to oh-my-zsh
```bash
cd ~/oh-my-zsh/plugins
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
```
## Copy configs
```bash
cp .zshrc ~
cp -r .config ~
```
# NeoVim
## Install VimPlug
To install plugins to Vim/NeoVim 'u' must have VimPlug or other Vim plugins loader.
```bash
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
If you don't have *curl* install it.
## Copy config
```bash
cp -r nvim ~/.config
```
If folder not exist create it: `mkdir .config`.
## Load plugins
* Open NeoVim: `nvim`.
* Click ":" on keyboard.
* Use `PlugInstall` command.
* Exit, click "esc" key, use `:q! command.
## Install python package to use plugins
If you don't have python 3.x install it from your distro repo.
```bash
pip3 install --user neovim
```

