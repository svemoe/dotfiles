export PATH=$PATH:~/.local/bin
export BM_DIR=~/documents/bookmarks
export LEDGER_FILE="$HOME/documents/documents/ledger.txt"

export TERMINAL=alacritty
export EDITOR=nvim
export IMAGE_VIEWER=imv
export LINK_HANDLER=lh

if [ "$(uname -o)" = "Android" ]; then
	export BROWSER=termux-open-url
else
	export BROWSER=qutebrowser
fi

[ -f ~/.bashrc ] && . ~/.bashrc

if [ -z "$DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ]; then
	sway
fi
