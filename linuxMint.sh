#!/bin/sh

#zsh
sudo apt install zsh

#oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

apt install git -y

#nodejs using npm
apt install npm -y
npm install nodejs

#brew installation and add to path - for those packages that are exclusive to brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
test -d ~/.linuxbrew && eval "$(~/.linuxbrew/bin/brew shellenv)"
test -d /home/linuxbrew/.linuxbrew && eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
test -r ~/.profile && echo "eval \"\$($(brew --prefix)/bin/brew shellenv)\"" >>~/.profile

# Linux mint has an updated gcc compiler but not a g++ compiler - leads to error for Neovim
apt install g++-12

# Things you like flatpak for:
#
#Marktext
flatpak install flathub com.github.marktext.marktext
#Spotify
flatpak install flathub com.spotify.Client
#Discord
flatpak install flathub com.discordapp.Discord
#Kicad
flatpak install --from https://flathub.org/repo/appstream/org.kicad.KiCad.flatpakref

#arduino cli and Serial
brew install arduino-cli
apt install cutecom -y
# config file for arduino-cli
arduino-cli config init
