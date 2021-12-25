export PATH=$PATH:~/.local/bin
export BM_DIR=~/documents/bookmarks
export LEDGER_FILE="$HOME/documents/documents/ledger.txt"

export EDITOR=nvim

if [ "$(uname -o)" = "Android" ]; then
	export BROWSER=termux-open
	export LINK_HANDLER=termux-open
	export NOTIFY=termux-toast
else if [ -z "$DISPLAY" ]; then
	export BROWSER=w3m
	export LINK_HANDLER=w3m
	export NOTIFY=echo
else
	export TERMINAL=alacritty
	export BROWSER=qutebrowser
	export LINK_HANDLER=lh
	export IMAGE_VIEWER=imv
	export NOTIFY=notify-send
fi

[ -f ~/.bashrc ] && . ~/.bashrc

if [ -z "$DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ]; then
	startx
fi
