export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="agnoster"

plugins=(git)

source $ZSH/oh-my-zsh.sh

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

export PYTHONPATH="$PYTHONPATH:/lunit/home/seilna/.git/executor"

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
alias gs="gpustat -i 0.1"

alias gpuX="export CUDA_VISIBLE_DEVICES=''"
alias gpu0="export CUDA_VISIBLE_DEVICES='0'"
alias gpu1="export CUDA_VISIBLE_DEVICES='1'"
alias gpu2="export CUDA_VISIBLE_DEVICES='2'"
alias gpu3="export CUDA_VISIBLE_DEVICES='3'"
alias gpu4="export CUDA_VISIBLE_DEVICES='4'"
alias gpu5="export CUDA_VISIBLE_DEVICES='5'"
alias gpu6="export CUDA_VISIBLE_DEVICES='6'"
alias gpu7="export CUDA_VISIBLE_DEVICES='7'"

alias gsave="git config credential.helper store"
alias gcgp="git commit -m 'commit without message' && git push origin HEAD"
alias gc="git commit -m 'commit without message'"
alias gp="git push origin HEAD"
alias eng="cd /lunit/home/seilna/.git/engine"
alias exe="cd $HOME/.git/executor/executor"
alias pk='pkill -f "python"'
alias pktmp="pkill -f tmp"
alias p="python"
alias v="nvim"
alias vi="nvim"
alias s="source"
alias c="clear"

alias won="export WANDB_MODE=''"
alias woff="export WANDB_MODE=dryrun"

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
export PATH=$HOME/bin:$PATH
export NCCL_ROOT_DIR="/usr/local/nccl"
export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/usr/local/nccl/lib"
