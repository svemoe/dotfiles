export PATH=$PATH:~/.local/bin
export BM_DIR=~/documents/bookmarks
export LEDGER_FILE="$HOME/documents/documents/ledger.txt"

export TERMINAL=st
export EDITOR=nvim

if [ "$(uname -o)" = "Android" ]; then
	export BROWSER=termux-open-url
else
	export BROWSER=qutebrowser
fi
