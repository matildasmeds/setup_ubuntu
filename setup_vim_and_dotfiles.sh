#!/bin/bash

cd ~
mkdir .vim
cd .vim
git clone --recurse-submodules https://github.com/matildasmeds/vim_and_dotfiles.git .
ln -s ~/.vim/vimrc ~/.vimrc
ln -s ~/.vim/.tmux.conf ~/.tmux.conf
ln -s ~/.vim/.zshrc ~/.zshrc
