export LIBVA_DRIVER_NAME=i965

export PATH=$PATH:~/.local/bin
export BM_DIR=~/documents/bookmarks
export LEDGER_FILE="$HOME/documents/documents/ledger.txt"

export EDITOR=nvim
export TERMINAL=alacritty
export IMAGE_VIEWER=imv

[ -f ~/.bashrc ] && . ~/.bashrc

if [ "$(uname -o)" = "Android" ]; then
	export BROWSER=termux-open
	export NOTIFY=termux-toast
fi

if [ -z "$DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ]; then
	export BROWSER='setsid -f qutebrowser &> /dev/null'
	export NOTIFY=notify-send
	startx
elif [ -z "$STY" ] && [ -z "$TMUX" ] && [ "$(uname -o)" != "Android" ]; then
	export BROWSER='w3m'
	export NOTIFY=echo
	tmux new -AD && exit
fi
