#!/bin/bash

mkdir -p $HOME/.config/

# gitconfig
cp .gitconfig $HOME/.gitconfig

# neovim
mkdir -p "$HOME/.config/nvim/"
cp -r nvim/ $HOME/.config/nvim/

# atuin
mkdir -p "$HOME/.config/atuin/"
cp -r atuin/ $HOME/.config/atuin/

# gitui
cp -r gitui/ $HOME/.config/gitui/

# wezterm
mkdir -p $HOME/.config/wezterm/
cp -R wezterm/ $HOME/.config/wezterm/
cp .wezterm.lua $HOME/.wezterm.lua

# tmux
git -C $HOME/.tmux-themepack/ pull || git clone https://github.com/jimeh/tmux-themepack.git $HOME/.tmux-themepack
cp .tmux.conf $HOME/.tmux.conf
