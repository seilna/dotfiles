# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH=/home/seil/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

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
# ENABLE_CORRECTION="true"

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
plugins=(
  git
)

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
#

alias tm="tmux"
alias ta="tmux attach"
alias gpustat="watch -n0.1 gpustat"
alias smi="watch -n0.1 nvidia-smi"
alias envs="conda info --envs"

source /home/seil/packages/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
export PATH=/home/seil/.anaconda2/bin:$PATH
#export PATH=/home/seil/.anaconda3/bin:$PATH

#export PATH="/usr/local/cuda/bin:$PATH"
export LD_LIBRARY_PATH="/usr/local/cuda/lib64/:$LD_LIBRARY_PATH"
export CUDNN_PATH="/usr/local/cuda/lib64/libcudnn.so.6"


alias ls='ls --color=auto --group-directories-first --hide="*.pyc"'
export PATH="$PATH:$HOME/bin"

export LANGUAGE=en_US.UTF-8
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
alias tenb="export CUDA_VISIBLE_DEVICES=' ' && tensorboard --logdir='.'"
alias top='htop --d=0.1'
alias iostat='watch -n0.1 iostat'
alias gdrive='~/packages/gdrive-linux-x64'

export ZPLUG_HOME=~/.zplug
source ~/.zplug/init.zsh
zplug "greymd/tmux-xpanes"

alias gpuX="export CUDA_VISIBLE_DEVICES=''"
alias gpu0="export CUDA_VISIBLE_DEVICES=0"
alias gpu1="export CUDA_VISIBLE_DEVICES=1"
alias gpu2="export CUDA_VISIBLE_DEVICES=2"
alias gpu3="export CUDA_VISIBLE_DEVICES=3"
alias gpu4="export CUDA_VISIBLE_DEVICES=0"
alias gpu5="export CUDA_VISIBLE_DEVICES=1"
alias gpu6="export CUDA_VISIBLE_DEVICES=2"
alias gpu7="export CUDA_VISIBLE_DEVICES=3"
alias gpu8="export CUDA_VISIBLE_DEVICES=0"
alias gpu9="export CUDA_VISIBLE_DEVICES=1"
alias gpu10="export CUDA_VISIBLE_DEVICES=2"
alias gpu11="export CUDA_VISIBLE_DEVICES=3"
alias gpu12="export CUDA_VISIBLE_DEVICES=0"
alias gpu13="export CUDA_VISIBLE_DEVICES=1"
alias gpu14="export CUDA_VISIBLE_DEVICES=2"
alias gpu15="export CUDA_VISIBLE_DEVICES=3"
alias emnlp="source activate emnlp"
alias py3="source activate py3"




# The next line updates PATH for the Google Cloud SDK.
if [ -f '/data/seil/google-cloud-sdk/path.zsh.inc' ]; then source '/data/seil/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/data/seil/google-cloud-sdk/completion.zsh.inc' ]; then source '/data/seil/google-cloud-sdk/completion.zsh.inc'; fi
source /home/seil/packages/zsh-autoenv/autoenv.zsh
