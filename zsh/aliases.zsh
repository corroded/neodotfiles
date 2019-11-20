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

# MISC
alias ls='ls -G' # colorized ls OSX

# GIT
alias gl="git log --graph --pretty=format:'%Cred%h%Creset %C(yellow)%d%Creset %s %Cgreen(%cr) %Cblue<%an>' --abbrev-commit"
alias glog='gl'
alias gs='git status'
alias gst='git stash'
alias gsp='git show --pretty'
alias gcm='git commit -m'
alias gap='git add -p'
alias gbi='git rebase --interactive'
alias gdc='git diff --cached -w'
alias gdmb='git branch --merged | grep -v "\*" | xargs -n 1 git branch -d'
alias gpo='git pull origin'

# RUBY
alias be='bundle exec'
alias sr='spring rspec'
alias rs='bundle exec rspec'

# FASD
alias v='f -e nvim'

# SPLIT
alias startdev='foreman start -f Procfile.development'

