#!/bin/sh

#zsh
sudo pacman -S {neovim, clang, firefox, flatpak, lazygit, npm, feh, rofi, picom, polybar, picom, pyenv, yazi}

#Rust for Alacritty
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
cargo install alacritty
#tpm for tmux config
#Need to source and then install with CTRL+SPACE+I
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
#oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#nodejs using npm
npm install nodejs

# This particular package allows for applications that require installing through a website by clicking
# trough a command prompt in the application. Just ensure that you have a good browser set to default as well.
sudo pacman -S xdg-desktop-portal-gtk
flatpak install Spotify
flatpak install Telegram
flatpak install Discord
# Serial Monitor GUI
flatpak install moserial
flatpak install zen

#arduino-cli and installs it to ~/local/bin which is added to PATH in zsh config
curl -fsSL https://raw.githubusercontent.com/arduino/arduino-cli/master/install.sh | sh

# config file for arduino-cli
# Adds files to manage board pacakages etc
arduino-cli config init

#sudo usermod -a -G groupname username
#uucp enables serial port access
#Must log out for changes to take effect
sudo usermod -a -G uucp $USER

#Lua installations required for neovim
# https://luarocks.org/#quick-start
wget https://luarocks.org/releases/luarocks-3.11.1.tar.gz
tar zxpf luarocks-3.11.1.tar.gz
cd luarocks-3.11.1
./configure && make && sudo make install
sudo luarocks install luasocket
