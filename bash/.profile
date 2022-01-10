export PATH=$PATH:~/.local/bin
export BM_DIR=~/documents/bookmarks
export LEDGER_FILE="$HOME/documents/documents/ledger.txt"

export EDITOR=nvim

if [ "$(uname -o)" = "Android" ]; then
	export BROWSER=termux-open
	export LINK_HANDLER=termux-open
	export NOTIFY=termux-toast
elif [ -z "$DISPLAY" ]; then
	export BROWSER=w3m
	export LINK_HANDLER='lh open'
	export NOTIFY=echo
else
	export TERMINAL=alacritty
	export BROWSER=qutebrowser
	export LINK_HANDLER='lh open'
	export IMAGE_VIEWER=imv
	export NOTIFY=notify-send
fi

[ -f ~/.bashrc ] && . ~/.bashrc

git -C ~/.dotfiles pull

if [ -z "$DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ]; then
	startx
elif [ "$(uname -o)" != "Android" ]; then
	screen -dRR && exit
fi
