# Most of these are copied from https://github.com/skwp/dotfiles/blob/4f96ebb0aced3730e2ae276cc7053f0d8e611a60/zsh/aliases.zsh
#

home=~/Documents/Projects/neodotfiles

# META
alias ae='nvim $home/zsh/aliases.zsh' #alias edit
alias ar='source $home/zsh/aliases.zsh'  #alias reload
alias av='nvim $home/vim/init.vim' #edit vimrc

# GIT
alias gs='git status'
alias gst='git stash'
alias gsp='git status --pretty'
alias gcm='git commit -m'
alias gap='git add -p'
alias gbi='git rebase --interactive'
alias gl='git l'
alias gdc='git diff --cached -w'
alias gdmb='git branch --merged | grep -v "\*" | xargs -n 1 git branch -d'

# Ruby
alias be='bundle exec'
