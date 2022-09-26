export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="alanpeabody"

zstyle ':omz:update' frequency 3

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

ENABLE_CORRECTION="true"

COMPLETION_WAITING_DOTS="true"

plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

alias zshconf="nvim ~/.zshrc"
alias i3conf="nvim ~/.config/i3/config"
alias xbps-install="sudo xbps-install"
alias ssh-server="ssh ahwx@no"
alias rel="xrdb merge ~/.Xresources && kill -USR1 $(pidof st)"

if [ -e /home/ah/.nix-profile/etc/profile.d/nix.sh ]; then . /home/ah/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
alias xbps-remove="sudo xbps-remove"
alias cat="bat"
alias htop="gotop"

echo "Sleep at day and wake up at night."
echo "This way we should avoid the sunlight."
