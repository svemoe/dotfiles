export PATH=$PATH:~/.local/bin
export BM_DIR=~/documents/bookmarks
export LEDGER_FILE="$HOME/documents/documents/ledger.txt"

export EDITOR=nvim
export TERMINAL=alacritty
export IMAGE_VIEWER=imv

[ -f ~/.bashrc ] && . ~/.bashrc

git -C ~/.dotfiles pull

if [ "$(uname -o)" = "Android" ]; then
	export BROWSER=termux-open
	export LINK_HANDLER=termux-open
	export NOTIFY=termux-toast
else
	export LINK_HANDLER='lh open'
fi

if [ -z "$DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ]; then
	export BROWSER='setsid -f qutebrowser'
	export NOTIFY=notify-send
	startx
elif [ -z "$STY" ] && [ -z "$TMUX" ] && [ "$(uname -o)" != "Android" ]; then
	export BROWSER='w3m'
	export NOTIFY=echo
	tmux new -AD && exit
fi
