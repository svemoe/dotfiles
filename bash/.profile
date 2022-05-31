export PATH=$PATH:~/.local/bin

# Define Programs
export EDITOR=nvim
export VIDVIEWER=mpv
export BROWSER="w3m"
export DOCVIEWER="jfbview --zoom_to_fit"
export PICVIEWER="mpv --loop-file=inf --really-quiet"
export TERMINAL="tmux new-window"

# Define Program Settings
export SFEED_PLUMBER_INTERACTIVE="1"
export SFEED_YANKER="tmux load-buffer -"
export BM_DIR=~/documents/bookmarks
export LEDGER_FILE="$HOME/documents/documents/ledger.txt"
export LIBVA_DRIVER_NAME=i965

setleds -D +num 2> /dev/null

[ -f ~/.bashrc ] && . ~/.bashrc

if [ -z "$TMUX" ]; then
	if [ -z "$SSH_TTY" ]; then
		export TERM=linux-16color
		tmux new -AD
	else
		tmux new -AD && exit
	fi
fi
