# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
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
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

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


HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

export PATH="$PATH:/usr/local/openmpi/bin"
export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/usr/local/openmpi/lib/"

export NCCL_ROOT_DIR="/usr/local/nccl"
export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/usr/local/nccl/lib"


export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
source "$HOME/packages/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"

alias ta="tmux attach"
alias td="tmux detach"
alias smi="watch -n0.1 nvidia-smi"
alias top='htop --d=0.1'

alias dr="nvidia-docker run --rm -it --user="root" -v /storage2:/storage2 -v /lunit/data:/lunit/data -v /lunit/home/seilna:/lunit/home/seilna seilna/ctr:ubuntu16.04-cuda9.0-cudnn7-python3.6-pytorch0.4.0-opencv3.4.0 /usr/bin/zsh"
alias dc="docker commit"
alias da="docker attach"
alias dp="docker ps | grep "seilna""
alias di="docker images | grep "seilna""
alias gc="git commit -m"
alias gs="gpustat -i 0.1"


alias tenb="tensorboard --logdir='.'"

alias gpuX="export CUDA_VISIBLE_DEVICES=''"
alias gpu0="export CUDA_VISIBLE_DEVICES='0'"
alias gpu1="export CUDA_VISIBLE_DEVICES='1'"
alias gpu2="export CUDA_VISIBLE_DEVICES='2'"
alias gpu3="export CUDA_VISIBLE_DEVICES='3'"
alias gpu4="export CUDA_VISIBLE_DEVICES='4'"
alias gpu5="export CUDA_VISIBLE_DEVICES='5'"
alias gpu6="export CUDA_VISIBLE_DEVICES='6'"
alias gpu7="export CUDA_VISIBLE_DEVICES='7'"

alias gitsave="git config credential.helper store"
alias gcgp="git commit -m 'commit without message' && git push origin HEAD"
alias gc="git commit -m 'commit without message'"
alias gp="git push origin HEAD"
alias eng="cd $HOME/engine"
alias bm="cd $HOME/engine/task/cnn_2stage_cls/batch_manager"
alias task="cd $HOME/engine/task/cnn_2stage_cls"
alias sample="cd $HOME/engine/sample_generator"
alias config="cd $HOME/engine/config/kr"
alias run="cd $HOME/engine && source config/kr/run.sh"

alias wandbon="export WANDB_MODE=''"
alias wandboff="export WANDB_MODE=dryrun"

export SLACK_WEB_HOOK="https://hooks.slack.com/services/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"
stty -ixon
