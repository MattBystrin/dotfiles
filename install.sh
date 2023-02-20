#!/bin/bash
#ln -s $(realpath nvim) ~/.config/nvim
#ln -s $(realpath .tmux.conf) ~/.tmux.conf
#ln -s $(realpath .zshrc) ~/.zshrc
#ln -s $(realpath menu) ~/.config/mc/menu

#Tmux plugin manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

#Nvim packer
git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim

#Vifm colorchemes
git clone https://github.com/vifm/vifm-colors ~/.config/vifm/colors
