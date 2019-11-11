# Most of these are copied from https://github.com/skwp/dotfiles/blob/4f96ebb0aced3730e2ae276cc7053f0d8e611a60/zsh/aliases.zsh
#

home=~/Documents/Projects/neodotfiles

# ZSH
alias ac='cat $home/zsh/aliases.zsh'     #alias check
alias ae='nvim $home/zsh/aliases.zsh' 	 #alias edit
alias ar='source $home/zsh/aliases.zsh'  #alias reload
alias az='nvim $home/zsh/.zshrc' 	 #edit zshrc
alias azr='source ~/.zshrc'		 #reload zshrc

# VIM
alias vi='nvim'

# EDIT various dotfiles
alias av='nvim $home/vim/init.vim' 	 #edit vimrc
alias ad='nvim .envrc'			 #edit local envrc file for project

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

# RUBY
alias be='bundle exec'
