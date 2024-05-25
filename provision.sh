#!/usr/bin/bash


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
	cp  nvim/init.lua $HOME/.config/nvim/
fi

