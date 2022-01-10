alias ls="ls --human-readable --color=auto"
alias df="df --human-readable"
alias du="du --human-readable"
alias mkdir="mkdir --parents"
alias vim="nvim"
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

if [ "$(uname -o)" = "Android" ]; then
	export BROWSER=termux-open
	export LINK_HANDLER=termux-open
	export NOTIFY=termux-toast
elif [ -z "$DISPLAY" ]; then
	export BROWSER=w3m
	export LINK_HANDLER='lh open'
	export NOTIFY=echo
else
	export BROWSER='setsid -f qutebrowser'
	export LINK_HANDLER='lh open'
	export NOTIFY=notify-send
fi
