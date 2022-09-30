export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="alanpeabody"

plugins=(
  git
)

source $ZSH/oh-my-zsh.sh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

alias sudo="doas"
alias i3conf="nvim ~/.config/i3/config"
alias cat="bat"
alias wall="feh --bg-fill"
alias pacman-install="doas pacman -S --needed"
alias pacman-remove="doas pacman -Rncs"
alias pacman="doas pacman"
alias zshconf="nvim ~/.zshrc"
alias rel="xrdb merge ~/.Xresources && kill -USR1 $(pidof st)"
alias wallpyper.py="~/dev/wallpyper/wallpyper.py"
alias reboot="doas reboot now"
alias polyconf='nvim ~/.config/polybar/config.ini'
alias finddoc="bash ~/dev/scripts/finddoc"
alias htop="gtop"

complete cf doas

echo "Sleep at day and wake up at night."
echo "That way, we will avoid the sunlight."
