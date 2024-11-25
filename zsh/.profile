export EDITOR="/usr/bin/nvim"
# export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:/var/lib/snapd/snap/bin
export PATH=$PATH:$HOME/dev/snippets/bin
export PATH=$PATH:$HOME/go/bin
export PATH=$PATH:$HOME/.local/bin

alias vim="nvim"
alias v="nvim"
alias l="lsd"
alias la="lsd -A"
alias ll="lsd -lA"
alias lt="lsd -lA --tree"
alias viprofile="vim $HOME/.profile && source $HOME/.profile"
alias dc="docker-compose"
alias sshconfig="vim $HOME/.ssh/config"
alias gitconfig="EDITOR=vim git config --global --edit"
alias dev="make buildDevDelve"
alias starsearch="starsearch-cli"
alias ss="starsearch-cli"
alias codei="code-insiders"
alias cat="bat"
alias track="tracker add"
alias lg="lazygit"

alias snippets="code ~/dev/snippets"

silent_background() {
    { 2>&3 "$@"& } 3>&2 2>/dev/null
    disown &>/dev/null  # Prevent whine if job has already completed
}

if [ -f "$HOME/dev/snippets/scripts/mousesetup" ]; then
    silent_background "$HOME/dev/snippets/scripts/mousesetup"
fi

if which opam >/dev/null 2>&1; then
    eval $(opam env --switch=default)
fi

test -d "$HOME/.private" && source "$HOME/.private/profile/"* || true
