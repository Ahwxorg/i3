export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="alanpeabody"

ENABLE_CORRECTION="true"

COMPLETION_WAITING_DOTS="true"

plugins=(git zsh-syntax-highlighting zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

alias zshconf="nvim ~/.zshrc"
alias emerge="doas emerge -av"
alias i3conf="nvim ~/.config/i3/config"

complete -cf doas
