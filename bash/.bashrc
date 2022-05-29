alias ls="ls --human-readable --color=auto"
alias df="df --human-readable"
alias du="du --human-readable"
alias mkdir="mkdir --parents"
alias vim="nvim"
alias pass="gopass"
alias mutt="neomutt"
alias nb="newsboat"
alias o="xdg-open"
alias yt="pipe-viewer"
alias gs="git status"
alias gd="git diff"
alias gc="git commit"
alias ga="git add"
alias gr="git restore"
alias sv="mosh sven@svenmoeller.xyz"
alias cg="git -C ~/.dotfiles"
alias cgs="git -C ~/.dotfiles status"
alias cgd="git -C ~/.dotfiles diff"
alias cgc="git -C ~/.dotfiles commit"
alias cgp="git -C ~/.dotfiles push"
alias cgr="git -C ~/.dotfiles restore"
alias cga="git -C ~/.dotfiles add"
alias cs="stow -d ~/.dotfiles"
alias sf="sfeed_curses ~/.sfeed/feeds/*"
alias w3m="w3m -B"
alias search="surfraw search"
alias t="todo.sh"

if [ "$TERM" = "linux" ]; then
#    echo -en "\e]P0222222" #black    -> this is the background color as well.
#    echo -en "\e]P1803232" #darkred
#    echo -en "\e]P25b762f" #darkgreen
#    echo -en "\e]P3aa9943" #brown
#    echo -en "\e]P4324c80" #darkblue
#    echo -en "\e]P5706c9a" #darkmagenta
#    echo -en "\e]P692b19e" #darkcyan
#    echo -en "\e]P7ffffff" #lightgray
#    echo -en "\e]P8222222" #darkgray
#    echo -en "\e]P9982b2b" #red
#    echo -en "\e]PA89b83f" #green
#    echo -en "\e]PBefef60" #yellow
#    echo -en "\e]PC2b4f98" #blue
#    echo -en "\e]PD826ab1" #magenta
#    echo -en "\e]PEa1cdcd" #cyan
#    echo -en "\e]PFdedede" #white    -> this is the foreground color as well.
#    clear                  #repaint the whole background with the new color

	export BROWSER="w3m"
	export DOCVIEWER="jfbview --zoom_to_fit"
	export PICVIEWER="mpv --loop-file=inf --really-quiet"
	export TERMINAL="tmux new-window"
fi
