export PATH=$PATH:~/.local/bin

# Define Programs
export EDITOR=nvim
export VIDVIEWER=mpv
export BROWSER="w3m"
export DOCVIEWER="jfbview --zoom_to_fit"
export PICVIEWER="mpv --loop-file=inf --really-quiet"
export TERMINAL="tmux new-window"
export YANKER="tmux load-buffer -"

# Define Program Settings
export SFEED_PLUMBER="lh"
export SFEED_PLUMBER_INTERACTIVE="1"
export SFEED_YANKER="tr -d '\n' | $YANKER"
export SFEED_URL_FILE="$HOME/.sfeed/urls"
[ -f "$SFEED_URL_FILE" ] || touch "$SFEED_URL_FILE"
export BM_DIR=~/documents/bookmarks
export LIBVA_DRIVER_NAME=i965
export LEDGER_FILE=~/.hledger.journal

setleds -D +num 2> /dev/null

[ -f ~/.bashrc ] && . ~/.bashrc

if [ -z "$TMUX" ]; then
	if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
		startwl
	elif [ -z "$SSH_TTY" ]; then
		udiskie &
		export TERM=linux-16color
		tmux new -AD
	else
		tmux new -AD && exit
	fi
fi
