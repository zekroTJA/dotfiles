export EDITOR="/usr/bin/nvim"
# export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:/var/lib/snapd/snap/bin
export PATH=$PATH:$HOME/dev/snippets/bin
export PATH=$PATH:$HOME/go/bin
export PATH=$PATH:$HOME/.local/bin

if [[ $DESKTOP_SESSION == "plasma" ]]; then
    export SSH_ASKPASS_REQUIRE=force
fi

alias vim="nvim"
alias v="nvim"
alias l="lsd"
alias la="lsd -A"
alias ll="lsd -lA"
alias lt="lsd -lA --tree"
alias viprofile="vim $HOME/.profile && source $HOME/.profile"
alias dc="docker compose"
alias sshconfig="vim $HOME/.ssh/config"
alias gitconfig="EDITOR=vim git config --global --edit"
alias dev="make buildDevDelve"
alias starsearch="starsearch-cli"
alias ss="starsearch-cli"
alias codei="code-insiders"
alias cat="bat"
alias lg="lazygit"
alias kc="kubectl"

alias t="tracker"
alias track="tracker add"
alias start="tracker add start"
alias pause="tracker add pause"

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

test -d "$HOME/.private" && for f in "$HOME/.private/profile/"*; do source "$f"; done || true

##### function aliases

mkcd() { mkdir -p "$1" && cd "$1"; }

# >>> juliaup initialize >>>

# !! Contents within this block are managed by juliaup !!

case ":$PATH:" in
    *:/home/rhoffmann/.juliaup/bin:*)
        ;;

    *)
        export PATH=/home/rhoffmann/.juliaup/bin${PATH:+:${PATH}}
        ;;
esac

# <<< juliaup initialize <<<
