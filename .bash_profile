eval "$(rbenv init -)"

export PATH=/usr/local/bin:$PATH
export EDITOR="emacs -nw"

alias grep="grep --color=auto"
alias g="git"
alias be="bundle exec"

if [ -f `brew --prefix`/etc/bash_completion.d/git-completion.bash ]; then
  . `brew --prefix`/etc/bash_completion.d/git-completion.bash
fi

export PS1='\W\[\033[32m\]$(__git_ps1) \[\033[0m\]$ '
