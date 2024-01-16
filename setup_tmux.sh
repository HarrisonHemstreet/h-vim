#!/bin/bash

# Check if ~/.tmux.conf exists and remove it
if [ -f "$HOME/.tmux.conf" ]; then
	rm "$HOME/.tmux.conf"
fi

# Create a symbolic link for .tmux.conf from the Neovim config directory
ln -s "$HOME/.config/nvim/.tmux.conf" "$HOME/.tmux.conf"

echo ".tmux.conf has been set up."
