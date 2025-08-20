# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export PATH="$HOME/bin:$PATH"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# update automatically without asking
zstyle ':omz:update' mode auto

# Set the directory we want to store zinit and plugins
# ZINIT Config and plugins  -----------------------------------------------
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

# Download Zinit, if it's not there yet
if [ ! -d "$ZINIT_HOME" ]; then
   mkdir -p "$(dirname $ZINIT_HOME)"
   git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi
# Source/Load zinit
source "${ZINIT_HOME}/zinit.zsh"
zinit ice depth=1

# Add in zsh plugins
zinit light zsh-users/zsh-syntax-highlighting # Highlighting 
zinit light jeffreytse/zsh-vi-mode # VIM keybindings 

# END ZINIT Config and plugins  -------------------------------------------------

export EDITOR=nvim

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)
source $ZSH/oh-my-zsh.sh

# Example aliases
# alias zshconfig="mate ~/.zshrc"
alias start="xdg-open ."
alias ar="arduino-cli"
alias toggleVPN="~/./SparkFun/sparkfunVPN/toggleVPN.sh"

# Not sure why I have this in here.....
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
fpath+=${ZDOTDIR:-~}/.zsh_functions

# Default ssh credentials for SparkFun
eval $(ssh-agent)
ssh-add ~/.ssh/work/sparkfun
clear


eval "$(zoxide init zsh)"
eval "$(starship init zsh)"
