Neovim and linux environment scripts
----------------
When the inevitable happens, use this.

![Image of BMO](https://media4.giphy.com/media/3rgXBsmYd60rL3w7sc/giphy.gif)
### Linux Mint install script
* `linuxMint.sh` captures most of the configuration but certain things that aren't are outlined below
### Terminal
* [Alacritty Install Instructions](https://github.com/alacritty/alacritty/blob/master/INSTALL.md)
    * `alacritty.toml`
### Shell
* [Zsh](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH>)
    * `sudo apt install zsh`
* [Oh My Zsh](https://ohmyz.sh/) Configuration
    * `sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`

### TMUX
* [TMUX cheat sheet](https://tmuxcheatsheet.com/)
* [TMUX Vim Navigator Plugin](https://github.com/christoomey/vim-tmux-navigator)
   * Using NVChad, you'll need to disable the following default move commands found `~$HOME/.local/share/nvim/lazy/NvChad/lua/nvchad/mappings.lua`
    * `<C-h>` `<C-j>` `<C-k>` `<C-l>`
* Plugin/Hotkey config: `tmux.conf`
    
