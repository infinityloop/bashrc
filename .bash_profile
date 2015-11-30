export PATH="$(brew --prefix homebrew/php/php56)/bin:$PATH"

export CLICOLOR=1

export NVM_DIR="/Users/Loop/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

source /usr/local/etc/bash_completion.d/git-prompt.sh
if [ -f ~/.git-prompt.sh ]; then
  source ~/.git-prompt.sh
  export PS1='Loop[\W]$(__git_ps1 "(%s)"): '
fi

# User specific aliases and functions

cdls () { 
	cd $1
	ls 
}

alias h="history|grep "
alias f="find . |xargs grep -n "
alias cd=cdls

# GIT shortcuts
alias master="git checkout master"
alias gm="git merge --no-ff "
alias gs="git status -sb"
alias gco="git checkout"
alias gb="git branch"
alias ga="git add"
alias gpp="git pull; git push"
alias grm="git stash; git rebase master; git stash pop -q"
alias gcp="git cherry-pick"
alias gd="git diff --ignore-space-at-eol -b -w"
