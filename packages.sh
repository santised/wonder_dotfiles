#!/bin/sh
#
#   ██████╗ ███████╗███╗   ██╗███████╗██████╗  █████╗ ██╗
#  ██╔════╝ ██╔════╝████╗  ██║██╔════╝██╔══██╗██╔══██╗██║
#  ██║  ███╗█████╗  ██╔██╗ ██║█████╗  ██████╔╝███████║██║
#  ██║   ██║██╔══╝  ██║╚██╗██║██╔══╝  ██╔══██╗██╔══██║██║
#  ╚██████╔╝███████╗██║ ╚████║███████╗██║  ██║██║  ██║███████╗
#   ╚═════╝ ╚══════╝╚═╝  ╚═══╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝
# Text editor, browser, programs for ricing i3
sudo pacman -S zsh neovim clang firefox lazygit npm feh rofi picom polybar picom dunst xclip fd ripgrep xscreensaver wine btop gparted --needed --noconfirm
sudo pacman -S yazi ffmpeg 7zip jq poppler fzf zoxide resvg imagemagick zellij xf86-video-vesa xf86-video-fbdev xf86-video-amdgpu --needed --noconfirm
#nodejs using npm
npm install nodejs
# Python env and installer manager - astral uv
curl -LsSf https://astral.sh/uv/install.sh | sh
# starship
curl -sS https://starship.rs/install.sh | sh

# Neovim
git clone https://github.com/LazyVim/starter ~/.config/nvim
rm -rf ~/.config/nvim/.git

# Mail client
yay -S proton-mail-bin --needed --noconfirm
#
#
#  ███████╗██╗      █████╗ ████████╗██████╗  █████╗ ██╗  ██╗
#  ██╔════╝██║     ██╔══██╗╚══██╔══╝██╔══██╗██╔══██╗██║ ██╔╝
#  █████╗  ██║     ███████║   ██║   ██████╔╝███████║█████╔╝
#  ██╔══╝  ██║     ██╔══██║   ██║   ██╔═══╝ ██╔══██║██╔═██╗
#  ██║     ███████╗██║  ██║   ██║   ██║     ██║  ██║██║  ██╗
#  ╚═╝     ╚══════╝╚═╝  ╚═╝   ╚═╝   ╚═╝     ╚═╝  ╚═╝╚═╝  ╚═╝
# This particular package allows for applications that require installing through a website by clicking
# trough a command prompt in the application. Just ensure that you have a good browser set to default as well.
sudo pacman -S flatpak --needed --noconfirm
sudo pacman -S xdg-desktop-portal-gtk --needed --noconfirm
flatpak install flathub com.spotify.Client -y
flatpak install flathub org.telegram.desktop -y
flatpak install flathub com.discordapp.Discord -y
flatpak install flathub art.taunoerik.tauno-serial-plotter -y
flatpak install flathub org.kicad.KiCad -y
flatpak install flathub io.github.Qalculate -y
flatpak install flathub org.libreoffice.LibreOffice -y
flatpak install art.taunoerik.tauno-serial-plotter -y
# Serial Monitor GUI
flatpak install flathub org.gnome.moserial -y

#
#
#  ████████╗███████╗██████╗ ███╗   ███╗██╗███╗   ██╗ █████╗ ██╗
#  ╚══██╔══╝██╔════╝██╔══██╗████╗ ████║██║████╗  ██║██╔══██╗██║
#     ██║   █████╗  ██████╔╝██╔████╔██║██║██╔██╗ ██║███████║██║
#     ██║   ██╔══╝  ██╔══██╗██║╚██╔╝██║██║██║╚██╗██║██╔══██║██║
#     ██║   ███████╗██║  ██║██║ ╚═╝ ██║██║██║ ╚████║██║  ██║███████╗
#     ╚═╝   ╚══════╝╚═╝  ╚═╝╚═╝     ╚═╝╚═╝╚═╝  ╚═══╝╚═╝  ╚═╝╚══════╝

#Rust for Alacritty
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
#tpm for tmux config

#Need to source and then install with CTRL+SPACE+I
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
#oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin

#   █████╗ ██████╗ ██████╗ ██╗   ██╗██╗███╗   ██╗ ██████╗      ██████╗██╗     ██╗
#  ██╔══██╗██╔══██╗██╔══██╗██║   ██║██║████╗  ██║██╔═══██╗    ██╔════╝██║     ██║
#  ███████║██████╔╝██║  ██║██║   ██║██║██╔██╗ ██║██║   ██║    ██║     ██║     ██║
#  ██╔══██║██╔══██╗██║  ██║██║   ██║██║██║╚██╗██║██║   ██║    ██║     ██║     ██║
#  ██║  ██║██║  ██║██████╔╝╚██████╔╝██║██║ ╚████║╚██████╔╝    ╚██████╗███████╗██║
#  ╚═╝  ╚═╝╚═╝  ╚═╝╚═════╝  ╚═════╝ ╚═╝╚═╝  ╚═══╝ ╚═════╝      ╚═════╝╚══════╝╚═╝
#arduino-cli and installs it to ~/local/bin which is added to PATH in zsh config
curl -fsSL https://raw.githubusercontent.com/arduino/arduino-cli/master/install.sh | sh
# config file for arduino-cli
# Adds files to manage board pacakages etc
arduino-cli config init
#sudo usermod -a -G groupname username
#uucp enables serial port access
#Must log out for changes to take effect
sudo usermod -a -G uucp $USER

#  ██╗     ██╗   ██╗ █████╗     ██╗   ██╗ █████╗ ██╗   ██╗ █████╗
#  ██║     ██║   ██║██╔══██╗   ██╔╝   ██║██╔══██╗██║   ██║██╔══██╗
#  ██║     ██║   ██║███████║  ██╔╝    ██║███████║██║   ██║███████║
#  ██║     ██║   ██║██╔══██║ ██╔╝██   ██║██╔══██║╚██╗ ██╔╝██╔══██║
#  ███████╗╚██████╔╝██║  ██║██╔╝ ╚█████╔╝██║  ██║ ╚████╔╝ ██║  ██║
#  ╚══════╝ ╚═════╝ ╚═╝  ╚═╝╚═╝   ╚════╝ ╚═╝  ╚═╝  ╚═══╝  ╚═╝  ╚═╝
#Lua installations required for neovim
# https://luarocks.org/#quick-start

wget https://luarocks.org/releases/luarocks-3.11.1.tar.gz
tar zxpf luarocks-3.11.1.tar.gz
cd luarocks-3.11.1
./configure && make && sudo make install
sudo luarocks install luasocket
# Need java installed for latex
yay -S jdk eagle --needed --noconfirm

#  ██████╗  █████╗ ███╗   ██╗██████╗  ██████╗ ███╗   ███╗
#  ██╔══██╗██╔══██╗████╗  ██║██╔══██╗██╔═══██╗████╗ ████║
#  ██████╔╝███████║██╔██╗ ██║██║  ██║██║   ██║██╔████╔██║
#  ██╔══██╗██╔══██║██║╚██╗██║██║  ██║██║   ██║██║╚██╔╝██║
#  ██║  ██║██║  ██║██║ ╚████║██████╔╝╚██████╔╝██║ ╚═╝ ██║
#  ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═══╝╚═════╝  ╚═════╝ ╚═╝     ╚═╝

# When installing the app image for the logic analyzer: https://www.saleae.com/pages/downloads
# Make sure to install libxcrypt-compat package
sudo pacman -S libxcrypt-compat steam --needed --noconfirm
mkdir ~/.fonts
mkdir ~/SparkFun
mkdir ~/Git-Personal/

# You'll need to download your font from here:https://www.nerdfonts.com/font-downloads
# Copy the download into your a new font directory: mkdir ~/.fonts
# help with adding to fstab
# UUID=28936792-9ce9-422d-9043-673766c9bc0a       /Arcade   ext4    defaults        0       0
