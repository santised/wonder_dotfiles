sudo apt-get install zsh 
chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
sudo apt-get update
sudo apt-get python3
sudo apt-get gcc
mkdir github
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

