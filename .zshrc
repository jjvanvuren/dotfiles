# Ensure compatibility with tmux and Kitty
export TERM=tmux-256color

export PATH=$PATH:$HOME/bin:$HOME/.local/bin
export PATH=/usr/lib/ccache/bin/:$PATH

# History configuration
HISTFILE=~/.zsh_history
HISTSIZE=50000
SAVEHIST=50000
setopt EXTENDED_HISTORY     # save timestamp + duration with each command
setopt INC_APPEND_HISTORY   # write to file after every command (not just on exit)
setopt SHARE_HISTORY
setopt HIST_IGNORE_DUPS     # don't save duplicate lines consecutively
setopt HIST_IGNORE_SPACE    # don't save lines starting with space

setopt interactive_comments

alias ll="ls -alF --color=auto"
alias la="ls -A --color=auto"
alias l="ls -CF --color=auto"
alias cat="bat -np"
alias s="kitten ssh"
alias paclist="pacman -Qqen > $HOME/.dotfiles/pkglist.txt && pacman -Qqem | grep -vE '^(paru|paru-debug)$' > $HOME/.dotfiles/aurpkglist.txt"
alias renderlock="betterlockscreen -u /home/jacques/.config/backgrounds/big-sur-mountains.jpg"
alias weather="wthrr -f d"
alias claude-yolo='claude --dangerously-skip-permissions'
alias venv="source ~/venv/docker-drp/bin/activate"

# Git WIP commits
alias gwip='git add -A; git rm $(git ls-files --deleted) 2> /dev/null; git commit --no-verify --no-gpg-sign --message "--wip-- [skip ci]"'
alias gunwip='git rev-list --max-count=1 --format="%s" HEAD | grep -q "\--wip--" && git reset HEAD~1'

# Similar to `gunwip` but recursive "Unwips" all recent `--wip--` commits not just the last one
function gunwipall() {
  local _commit=$(git log --grep='--wip--' --invert-grep --max-count=1 --format=format:%H)

  # Check if a commit without "--wip--" was found and it's not the same as HEAD
  if [[ "$_commit" != "$(git rev-parse HEAD)" ]]; then
    git reset $_commit || return 1
  fi
}

#Activate global python virtual environment
if [[ -d "$HOME/.venvs/global" ]]; then
  source $HOME/.venvs/global/bin/activate
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Initialize Starship prompt
eval "$(starship init zsh)"

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
