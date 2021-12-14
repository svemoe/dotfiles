export PATH=$PATH:~/.local/bin
export BM_DIR=~/documents/bookmarks
export LEDGER_FILE="$HOME/documents/documents/ledger.txt"

export EDITOR=nvim

if [ "$(uname -o)" = "Android" ]; then
	export BROWSER=termux-open
	export LINK_HANDLER=termux-open
else
	export TERMINAL=alacritty
	export BROWSER=qutebrowser
	export LINK_HANDLER=lh
	export IMAGE_VIEWER=imv
fi

[ -f ~/.bashrc ] && . ~/.bashrc

if [ -z "$DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ]; then
	sway
fi
