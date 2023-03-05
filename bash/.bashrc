export MENU="fzf"

alias ls="ls --human-readable --color=auto"
alias df="df --human-readable"
alias du="du --human-readable"
alias mkdir="mkdir --parents"
alias vim="nvim"
alias pass="gopass"
alias mutt="neomutt"
alias nb="newsboat"
alias o="xdg-open"
alias open="xdg-open"
alias yt="pipe-viewer"
alias gs="git status"
alias gd="git diff"
alias gc="git commit"
alias ga="git add"
alias gr="git restore"
alias sv="mosh sven@svemoe.de"
alias config="git -C ~/.dotfiles"
source /usr/share/bash-completion/completions/git
__git_complete config __git_main
alias stow="stow -d ~/.dotfiles"
alias sf="sfeed_curses ~/.sfeed/feeds/*"
alias sfu="sfeed_update"
alias w3m="w3m -B"
alias search="surfraw search"
alias t="todo.sh"
alias qalc="qalc -s 'decimal comma on'"

osc7_cwd() {
    local strlen=${#PWD}
    local encoded=""
    local pos c o
    for (( pos=0; pos<strlen; pos++ )); do
        c=${PWD:$pos:1}
        case "$c" in
            [-/:_.!\'\(\)~[:alnum:]] ) o="${c}" ;;
            * ) printf -v o '%%%02X' "'${c}" ;;
        esac
        encoded+="${o}"
    done
    printf '\e]7;file://%s%s\e\\' "${HOSTNAME}" "${encoded}"
}
PROMPT_COMMAND=${PROMPT_COMMAND:+$PROMPT_COMMAND; }osc7_cwd
