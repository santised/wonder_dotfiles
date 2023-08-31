#!/bin/sh

#oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

apt install git -y

#nodejs using npm 
apt install npm -y
npm install nodejs

#arduino cli and Serial 
curl -fsSL https://raw.githubusercontent.com/arduino/arduino-cli/master/install.sh | sh
apt install cutecom -y
apt install screen -y


