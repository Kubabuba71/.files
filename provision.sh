#!/bin/bash


# gitconfig
if [[ -f "$HOME/.gitconfig" ]]; then
	echo "$HOME/.gitconfig already exists, skipping it"
else
	echo "Copying .gitconfig to $HOME/.gitconfig"
	cp .gitconfig $HOME/.gitconfig
fi

# neovim
if [[ -d "$HOME/.config/nvim/" ]]; then
	echo "Directory $HOME/.config/nvim/ already exists, skipping it"
else
	echo "Creating directory $HOME/.config/nvim/"
	mkdir "$HOME/.config/nvim/"
fi

if [[ -f "$HOME/.config/nvim/init.lua" ]]; then
	echo "$HOME/.config/nvim/init.lua already exists, skipping it"
else
	echo "Copying nvim/init.lua to $HOME/.config/nvim/init.lua"
	cp  nvim/init.lua $HOME/.config/nvim/init.lua
fi

# atuin
if [[ -d "$HOME/.config/atuin/" ]]; then
	echo "Directory $HOME/.config/atuin/ already exists, skipping it"
else
	echo "Creating directory $HOME/.config/atuin/"
	mkdir "$HOME/.config/atuin/"
fi

if [[ -f "$HOME/.config/atuin/config.toml" ]]; then
	echo "$HOME/.config/atuin/config.toml already exists, skipping it"
else
	echo "Copying atuin/config.toml to $HOME/.config/atuin/config.toml"
	cp atuin/config.toml $HOME/.config/atuin/config.toml
fi

# gitui
if [[ -d "$HOME/.config/gitui/" ]]; then
	echo "Directory $HOME/.config/gitui/ already exists, skipping it"
else
	mkdir "$HOME/.config/gitui/"
fi

if [[ -f "$HOME/.config/gitui/theme.ron" ]]; then
	echo "$HOME/.config/gitui/theme.ron already exists, skipping it"
else
	echo "Copying gitui/theme.ron to $HOME/.config/gitui/theme.ron"
	cp gitui/theme.ron $HOME/.config/gitui/theme.ron
fi

# wezterm
if [[ -d "$HOME/.config/wezterm/colors/" ]]; then
	echo "Directory $HOME/.config/wezterm/colors/ already exists, skipping it"
else
	mkdir -p "$HOME/.config/wezterm/colors/"
	echo "Copying wezterm/colors to $HOME/.config/wezterm/colors/"
	cp -R wezterm/colors/ $HOME/.config/wezterm/colors/
fi

if [[ -f "$HOME/.wezterm.lua" ]]; then
	echo "$HOME/.config/wezterm/ already exists, skipping it"
else
	echo "Copying .wezterm.lua to $HOME/.wezterm.lua"
	cp .wezterm.lua $HOME/.wezterm.lua
fi
