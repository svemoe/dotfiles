export PATH=$PATH:~/.local/bin
export BM_DIR=~/documents/bookmarks
export LEDGER_FILE="$HOME/documents/documents/ledger.txt"

export EDITOR=nvim
export TERMINAL=alacritty
export IMAGE_VIEWER=imv

[ -f ~/.bashrc ] && . ~/.bashrc

git -C ~/.dotfiles pull

if [ -z "$DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ]; then
	startx
elif [ -z "$STY" ] && [ -z "$TMUX" ] && [ "$(uname -o)" != "Android" ]; then
	screen -dRR && exit
fi
