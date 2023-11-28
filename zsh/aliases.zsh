# Most of these are copied from https://github.com/skwp/dotfiles/blob/4f96ebb0aced3730e2ae276cc7053f0d8e611a60/zsh/aliases.zsh
#

home=$HOME/Projects/neodotfiles

# ZSH
alias ak='nvim $HOME/.config/kitty/kitty.conf'  #edit kitty.conf
alias ac='cat $home/zsh/aliases.zsh'            #alias check
alias ae='nvim $home/zsh/aliases.zsh'           #alias edit
alias ar='source $home/zsh/aliases.zsh'         #alias reload
alias az='nvim $HOME/.zshrc'    	              #edit zshrc
alias azr='source $HOME/.zshrc'		              #reload zshrc
alias ast='nvim $HOME/.config/starship.toml'    #edit starship

# VIM
alias vi='nvim'
alias shabu='nvim'

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
alias gplr='git pull --rebase'
alias gorm='git pull origin main'
gip() { git archive --format=zip -o $1.zip HEAD }

# RUBY
alias be='bundle exec'
alias sr='spring rspec'
alias rs='bundle exec rspec'
alias rsa='rspec spec'

# RAILS
alias ber='bin/rake routes | fzf'
alias rtp="RACK_ENV=test rake 'parallel:spec[8]'"
alias rmlog='rm log/*.log'

# proc with foreman
alias startdev='foreman start -f Procfile.dev'

# RANDOM
# from @alexlouden in Fenders
alias gjgif='curl -s "https://api.giphy.com/v1/gifs/random?api_key=02872bkKibCp89d5A1oILo0uh3uzNb5d&tag=good%work&rating=g" | jq -r ".data.images.downsized_medium.url" | tee >(pbcopy) | xargs open'
alias getgif='pbpaste | xargs wget -O giphy.gif'

gifsearch() { curl -s "https://api.giphy.com/v1/gifs/random?api_key=02872bkKibCp89d5A1oILo0uh3uzNb5d&tag=$1&rating=g" | jq -r --unbuffered ".data.images.downsized_medium.url" | tee >(pbcopy) | xargs open }
alias gsearch='gifsearch'

alias yeet='git push origin $(git rev-parse --abbrev-ref HEAD)'
alias yolo='git push origin --force-with-lease $(git rev-parse --abbrev-ref HEAD)'

alias updatemain='git pull origin main && bundle'
