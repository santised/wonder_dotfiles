 # If you come from bash you might have to change your $PATH.
  1 # export PATH=$HOME/bin:/usr/local/bin:$PATH
  2
  3 # Path to your oh-my-zsh installation.
  4 export ZSH="/home/wonder_boom/.oh-my-zsh"
  5
  6 # Set name of the theme to load --- if set to "random", it will
  7 # load a random theme each time oh-my-zsh is loaded, in which case,
  8 # to know which specific one was loaded, run: echo $RANDOM_THEME
  9 # See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
 10 ZSH_THEME="pygmalion"
 11
 12 # Set list of themes to pick from when loading at random
 13 # Setting this variable when ZSH_THEME=random will cause zsh to load
 14 # a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
 15 # If set to an empty array, this variable will have no effect.
 16 # ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )
 17
 18 # Uncomment the following line to use case-sensitive completion.
 19 # CASE_SENSITIVE="true"
 20
 21 # Uncomment the following line to use hyphen-insensitive completion.
 22 # Case-sensitive completion must be off. _ and - will be interchangeable.
 23 # HYPHEN_INSENSITIVE="true"
 24
 25 # Uncomment the following line to disable bi-weekly auto-update checks.
 26 # DISABLE_AUTO_UPDATE="true"
 27
 28 # Uncomment the following line to automatically update without prompting.
 29 # DISABLE_UPDATE_PROMPT="true"
 30
 31 # Uncomment the following line to change how often to auto-update (in days).
 32 # export UPDATE_ZSH_DAYS=13
 33
 34 # Uncomment the following line if pasting URLs and other text is messed up.
 35 # DISABLE_MAGIC_FUNCTIONS=true
 36
 37 # Uncomment the following line to disable colors in ls.
 38 # DISABLE_LS_COLORS="true"
 39
 40 # Uncomment the following line to disable auto-setting terminal title.
 41 # DISABLE_AUTO_TITLE="true"
 42
 43 # Uncomment the following line to enable command auto-correction.
 44 # ENABLE_CORRECTION="true"
 45
 46 # Uncomment the following line to display red dots whilst waiting for completion.
 47 COMPLETION_WAITING_DOTS="true"
 48
 49 # Uncomment the following line if you want to disable marking untracked files
 50 # under VCS as dirty. This makes repository status check for large repositories
 51 # much, much faster.
 52 # DISABLE_UNTRACKED_FILES_DIRTY="true"
 53
 54 # Uncomment the following line if you want to change the command execution time
 55 # stamp shown in the history command output.
 56 # You can set one of the optional three formats:
 57 # "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
 58 # or set a custom format using the strftime function format specifications,
 59 # see 'man strftime' for details.
 60 # HIST_STAMPS="mm/dd/yyyy"
 61
 62 # Would you like to use another custom folder than $ZSH/custom?
 63 # ZSH_CUSTOM=/path/to/new-custom-folder
 64
 65 # Which plugins would you like to load?
 66 # Standard plugins can be found in ~/.oh-my-zsh/plugins/*
 67 # Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
 68 # Example format: plugins=(rails git textmate ruby lighthouse)
 69 # Add wisely, as too many plugins slow down shell startup.
 70 plugins=(git github python pip pep8 z)
 71
 72 source $ZSH/oh-my-zsh.sh
 73
 74 # User configuration
 75
 76 # export MANPATH="/usr/local/man:$MANPATH"
 77
 78 # You may need to manually set your language environment
 79 # export LANG=en_US.UTF-8
 80
 81 # Preferred editor for local and remote sessions
 82 # if [[ -n $SSH_CONNECTION ]]; then
 83 #   export EDITOR='vim'
 84 # else
 85 #   export EDITOR='mvim'
 86 # fi
 87
 88 # Compilation flags
 89 # export ARCHFLAGS="-arch x86_64"
 90
 91 # Set personal aliases, overriding those provided by oh-my-zsh libs,
 92 # plugins, and themes. Aliases can be placed here, though oh-my-zsh
 93 # users are encouraged to define aliases within the ZSH_CUSTOM folder.
 94 # For a full list of active aliases, run `alias`.
 95 #
 96 # Example aliases
 97 # alias zshconfig="mate ~/.zshrc"
 NORMAL  .zshrc                                                                                                zsh  utf-8[unix]    1% ?    1/99 ? :  1

