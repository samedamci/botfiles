#!/bin/python3

import os

os.system('yay -Sy --noconfirm python-pip git polybar ttf-dejavu-ib wget curl neovim qutebrowser')
os.system('sh -c "$(wget -O- https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"')
os.system('git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $HOME/.oh-my-zsh/plugins')
os.system('cp .zshrc $HOME && cp -r .config $HOME')
os.system('curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim')
os.system('pip3 install --user neovim')
os.system('nvim --headless -c PlugInstall -c q -c q')
os.system('git clone https://github.com/samedamci/st-fork.git $HOME/.st')
os.system('cd $HOME/.st && make && sudo make clean install && rm -rf $HOME/.st && clear')

print("Done.")
