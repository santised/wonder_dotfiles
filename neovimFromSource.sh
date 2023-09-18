#!/bin/sh
# Prerequisites
sudo apt-get install ninja-build gettext cmake unzip curl

# Clone repository
git clone https://github.com/neovim/neovim

# Move to new folder
cd neovim

# Go to stable 
git checkout stable

# Make installer 
make CMAKE_BUILD_TYPE=RelWithDebInfo

# Install
sudo make install 

# Assuming all went well download NVChad
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 

# Clone my settings
git clone https://github.com/santised/NvChad ~

# Repository needed for regex
apt-get install ripgrep
