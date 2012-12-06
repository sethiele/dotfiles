# Ruby gem Stuff
export GEM_HOME=${HOME}/.gem/ruby/1.8
export GEM_PATH=${HOME}/.gem/ruby/1.8
export PATH=${HOME}/.gem/ruby/1.8/bin:$PATH
#export PATH=$PATH:/usr/local/mysql/bin

# git autocomplete
source ~/git-completion.bash
 
#ALias
alias l="ls -la"
alias ll="ls -la | less"
alias vssh="ssh vagrant"
alias flushdns="dscacheutil -flushcache && echo 'DNS Cache geleert'"
alias be="bundle exec"

#Color
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

# nützliche Aliase git
alias gb='git branch'
alias gba='git branch -a'
alias gc='git commit -v'
alias gca='git commit -v -a'

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
