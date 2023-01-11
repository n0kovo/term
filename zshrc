export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

zstyle ':omz:update' mode auto

HIST_STAMPS="dd/mm/yyyy"

plugins=(git zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

export LANG=en_US.UTF-8

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

export ARCHFLAGS="-arch x86_64"

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

alias make="make -j$(nproc)"
alias python="python3"
alias pip="pip3"
