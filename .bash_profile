#sourcing chruby
source /usr/local/opt/chruby/share/chruby/chruby.sh
source /usr/local/opt/chruby/share/chruby/auto.sh

alias desktop="cd ~/Desktop"
alias downloads="cd ~/Downloads"
alias gdif="git diff --color | diff-so-fancy"
alias gdiff="git diff --color | diff-so-fancy"
alias gg="git status -s"
alias gitdif="git diff --color | diff-so-fancy"
alias gitdiff="git diff --color | diff-so-fancy"
alias ll="ls -lah"
alias railsclean="RAILS_ENV=development rake assets:clean; RAILS_ENV=development rake tmp:clear; RAILS_ENV=test rake assets:clean; RAILS_ENV=test rake tmp:clear"
PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin

# Add ./bin to make running Rails commands with Spring the default
PATH=./bin:$PATH

# Set the default Ruby version
chruby ruby-2.5.3

# Git Completion & Repo State
source `brew --prefix git`/etc/bash_completion.d/git-completion.bash
source `brew --prefix git`/etc/bash_completion.d/git-prompt.sh

MAGENTA="\[\033[0;35m\]"
YELLOW="\[\033[0;33m\]"
BLUE="\[\033[34m\]"
LIGHT_GRAY="\[\033[0;37m\]"
CYAN="\[\033[0;36m\]"
GREEN="\[\033[0;32m\]"
GIT_PS1_SHOWDIRTYSTATE=true
export LS_OPTIONS='--color=auto'
export CLICOLOR='Yes'
export LSCOLORS=gxfxbEaEBxxEhEhBaDaCaD

export PS1=$LIGHT_GRAY"sumankoirala"'$(
    if [[ $(__git_ps1) =~ \*\)$ ]]
    # a file has been modified but not added
    then echo "'$YELLOW'"$(__git_ps1 " (%s)")
    elif [[ $(__git_ps1) =~ \+\)$ ]]
    # a file has been added, but not commited
    then echo "'$MAGENTA'"$(__git_ps1 " (%s)")
    # the state is clean, changes are commited
    else echo "'$CYAN'"$(__git_ps1 " (%s)")
    fi)'$BLUE" \w"$GREEN": "
    
