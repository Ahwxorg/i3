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
alias sudo="doas"
alias zshconf="nvim ~/.zshrc"
alias cat="bat"
alias wall="feh --bg-fill"
alias pacman="doas pacman"
alias reboot="doas reboot now"
alias open="xdg-open"
alias rel="xrdb merge ~/.Xresources && kill -USR1 $(pidof st)"

alias his="history | cut -c 8- | sort | uniq | fzf | tr '\\n' ' ' | xclip -sel c"
alias 0x0='curl -F"file=@$(find $HOME type f | fzf)" 0x0.st | xclip -sel c'
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && printf '%s' "terminal" || printf '%s' "error")" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

complete -cf doas
