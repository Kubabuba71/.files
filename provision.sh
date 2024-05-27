#!/bin/bash


if [[ -f "$HOME/.gitconfig" ]]; then
	echo "$HOME/.gitconfig already exists, skipping it"
else
	echo "Copying .gitconfig to $HOME/.gitconfig"
	cp .gitconfig $HOME/.gitconfig
fi

if [[ -d "$HOME/.config/nvim" ]]; then 
	echo "Directory $HOME/.config/nvim already exists, skipping it"
else
	mkdir "$HOME/.config/nvim/"
fi

if [[ -f "$HOME/.config/nvim/init.lua" ]]; then
	echo "$HOME/.config/nvim/init.lua already exists, skipping it"
else
	echo "Copying nvim/init.lua to $HOME/.config/nvim/init.lua"
	cp  nvim/init.lua $HOME/.config/nvim/init.lua
fi

if [[ -d "$HOME/.config/atuin" ]]; then 
	echo "Directory $HOME/.config/atuin already exists, skipping it"
else
	mkdir "$HOME/.config/atuin/"
fi

if [[ -f "$HOME/.config/atuin/config.toml" ]]; then
	echo "$HOME/.config/atuin/config.toml already exists, skipping it"
else
	echo "Copying atuin/config.toml to $HOME/.config/atuin/config.toml"
	cp atuin/config.toml $HOME/.config/atuin/config.toml
fi

if [[ -d "$HOME/.config/gitui" ]]; then 
	echo "Directory $HOME/.config/gitui already exists, skipping it"
else
	echo "Copying atuin/config.toml to $HOME/.config/atuin/config.toml"
	mkdir "$HOME/.config/gitui/"
fi

if [[ -f "$HOME/.config/gitui/theme.ron" ]]; then
	echo "$HOME/.config/gitui/theme.ron already exists, skipping it"
else
	echo "Copying gitui/theme.ron to $HOME/.config/gitui/theme.ron"
	cp gitui/theme.ron $HOME/.config/gitui/theme.ron
fi
