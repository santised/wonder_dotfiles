# General notes
# "-y" will confirm all prompts

#Chocoloate Installer
Set-ExecutionPolicy Bypass -Scope Process -Force 
iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

#Various Apps
choco install spotify -y 
choco install firefox -y 
choco install eagle -y 
choco install autodesk-fusion360 -y
choco install telegram -y 
choco install signal -y 

# Git and Terminals
choco install github-desktop -y 
choco install git -y 
choco install curl -y 
choco install 7zip -y 
choco install alacritty -y 
choco install autohotkey -y
choco install foxitreader -y

# Games
choco install steam -y 
#battle.net
choco install geforce-experience -y 
choco install discord -y
choco install steelseries-engine -y
choco install msiafterburner -y
# VIM 
choco install neovim -y 

# Programming Languages
choco install python -y 
choco install arduino -y 

choco install vnc-viewer -y 
# Any games from Steam
#
choco install nerd-fonts-hack -y 


# There are no chocolatey packages for the following:
# AWS VPN Client
# Salae Logic
# LT Spice
# Afterburner (GPU) settings?notes
# Razer Synapse 3
# MINGW
