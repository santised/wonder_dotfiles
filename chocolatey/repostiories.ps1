#Place these repositories into C:/users/user/documents/Github
# Personal
#
# vim-PLUG for NEOVIM:
iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
    ni $HOME/vimfiles/autoload/plug.vim -Force

# Move init.vim to C:\Users\<User Name>\AppData\Local\nvim:

mkdir "env:USERPROFILE\AppData\Local\nvim"
mkdir "env:USERPROFILE\Documents\Github\"
cd "env:USERPROFILE\Documents\Github\"

git clone https://github.com/santised/wonder_dotfiles.git
git clone https://github.com/santised/Eagle_Settings.git
git clone https://github.com/santised/choco_installs.git

# Work
git clone https://github.com/santised/Eagle_Settings.git 
git clone https://github.com/sparkfun/SparkFun-Eagle-Libraries.git
git clone https://github.com/sparkfun/SparkFun-Eagle-Settings.git

