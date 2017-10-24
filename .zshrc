# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/anaconda/bin:usr/local/bin:usr/bin:$HOME/src:$PATH
export PATH=$HOME/anaconda/bin:$HOME/src:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="wezm+"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git brew npm python pyenv pip pep8 osx github aws virtualenv tmux)

# Environmental variables

# zsh - don't share history between windows
setopt nosharehistory


export VISUAL=/usr/local/bin/vim  # Use homebrew vim
export TERM=xterm-256color

export MLENS_TMPDIR=$HOME/.mlens

export SPOTIFY_CLIENT_ID="925293298b104b17a437be78ce4c7b62"
export SPOTIFY_SECRET_KEY="1acea3e0c89c434094375cb384cfb273"
export SPOTIFY_CALL_TOKEN="OTI1MjkzMjk4YjEwNGIxN2E0MzdiZTc4Y2U0YzdiNjI6MWFjZWEzZTBjODljNDM0MDk0Mzc1Y2IzODRjZmIyNzM="  # generate with python base64.base64(bytes("$client_id:$secret_key"), 'utf-8') 
####################################################################################
# Aliases
alias jekyll="bundle exec jekyll"
alias ptp="pdftopng -r 600"
alias mvim="mvim -g"

alias s="spotify"
alias se="spotify pause"
alias sy="spotify play"
alias st="spotify play artist"
alias sm="spotify play album"
alias sn="spotify next"
alias s+="spotify vol up"
alias s-="spotify vol down"

####################################################################################
# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8
# export LC_CTYPE=en_US.UTF-8

# SSH
# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Z quick navigation
. `brew --prefix`/etc/profile.d/z.sh

####################################################################################
# Initialize
source $ZSH/oh-my-zsh.sh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

