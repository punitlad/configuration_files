export ANDROID_HOME=/usr/local/opt/android-sdk
export ANT_OPTS=-Xmx1G

eval $(/usr/libexec/path_helper -s)
export GOPATH=$HOME/go

export PATH=$HOME/.jenv/bin:~/Library/Python/3.6/bin/:$PATH
eval "$(jenv init -)"

function volume() {ddd
	echo "Setting Volume to $1"
	sudo osascript -e "set Volume $1"
}

function web_proxy_off() {
	sudo networksetup -setwebproxystate "Wi-Fi" off
	export http_proxy=""
}

function clear_postman() {
    echo 'rm -rf $HOME/Library/Application\ Support/Postman/IndexedDB/'
        rm -r -i $HOME/Library/Application\ Support/Postman/IndexedDB/
}

function clear_docker_images() {
	docker rmi -f $(docker images -aq)
}

# app alias
alias code="/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code"
alias elixer=elixir
alias ixer=elixir
alias love="/Applications/love.app/Contents/MacOS/love"
alias bashsc=bindkey
eval $(thefuck --alias)
alias crap=fuck

# rails alias
alias zspec="zeus rspec spec -- --tag focus"
alias zc="zeus console"
alias zs="zeus server"
alias rc="rails console"
alias rs="rails server"

# directory alias
alias projects='cd /Users/plad/projects/'
alias nyiso='cd /Users/plad/projects/nyiso'

# apache alias
alias apache_start='sudo apachectl start'
alias apache_restart='sudo apachectl restart'
alias apache_stop='sudo apachectl stop'

# script alias
alias spring_beans="~/.scripts/spring_beans.sh"
alias gimme_a_pair="ruby ~/.scripts/gimme_a_pair.rb"

# git alias
alias glo="git log --oneline"
alias gls="git log --oneline --stat"
alias gst="git status"
alias gsp="git stash pop"
alias gss="git stash save"
alias gsl="git stash list"
alias gsd="git stash drop"
alias gco="git checkout"
alias gci="git commit"

# mvn alias
alias mci="mvn clean install"
alias mcisbr="mvn clean install spring-boot:run"
alias mcist="mvn clean install -DskipTests"

# bash alias
alias size="du -h"
alias ls="ls -a"

