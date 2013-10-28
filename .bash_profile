eval "$(rbenv init -)"

export PATH=/usr/local/bin:$PATH
export EDITOR="emacs -nw"
export GOPATH="$HOME/p/gopath"
export PATH=${PATH}:${GOPATH}/bin
export ERL_LIBS="$HOME/p/erllibs"

alias grep="grep --color=auto"
alias g="git"
alias gt="git status"
alias be="bundle exec"

if [ -f `brew --prefix`/etc/bash_completion.d/git-completion.bash ]; then
  . `brew --prefix`/etc/bash_completion.d/git-completion.bash
  __git_complete g __git_main
fi

export PS1='\W\[\033[32m\]$(__git_ps1) \[\033[0m\]$ '
