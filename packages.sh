#!/bin/sh

#zsh
sudo pacman -S {neovim, clang, firefox, flatpak, lazygit, npm, feh, rofi, picom, polybar, picom, pyenv, yazi}

#Rust for Alacritty
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
cargo install alacritty

#oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#nodejs using npm
npm install nodejs

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
