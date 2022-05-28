export LIBVA_DRIVER_NAME=i965

export PATH=$PATH:~/.local/bin
export BM_DIR=~/documents/bookmarks
export LEDGER_FILE="$HOME/documents/documents/ledger.txt"

export EDITOR=nvim
export VIDVIEWER=mpv

setleds -D +num 2> /dev/null

[ -f ~/.bashrc ] && . ~/.bashrc

if [ "$(uname -o)" = "Android" ]; then
	export BROWSER=termux-open
	export NOTIFY=termux-toast
fi

if [ -z "$TMUX" ]; then
	if [ -z "SSH_TTY" ]; then
		tmux new -AD
	else
		tmux new -AD && exit
	fi
fi
