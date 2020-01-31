export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="agnoster"

plugins=(git)

source $ZSH/oh-my-zsh.sh

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
alias pk='pkill -f "python"'
alias p="python"
alias v="vi"

alias wandbon="export WANDB_MODE=''"
alias wandboff="export WANDB_MODE=dryrun"

export SLACK_WEB_HOOK="https://hooks.slack.com/services/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"
stty -ixon

# fzf setup
# fzf setup
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_COMPLETION_OPTS='+c -x'
export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git --exclude wandb --exclude results'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_COMPLETION_TRIGGER=''
_fzf_compgen_path() {
      fd --hidden --follow --exclude ".git" --exclude "wandb" --exclude "results" . "$1"
}

_fzf_compgen_dir() {
      fd --type d --hidden --follow --exclude ".git" --exclude "wandb" --exclude "results" . "$1"
}

bindkey '^F' fzf-completion
bindkey '^I' $fzf_default_completion
