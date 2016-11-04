[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export ANDROID_HOME=/usr/local/opt/android-sdk

# app alias
alias code="/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code"
alias atom="/Applications/Atom.app/Contents/Resources/app/atom.sh"
alias elixer=elixir
alias ixer=elixir
alias love="/Applications/love.app/Contents/MacOS/love"

# jdk alias
alias setJdk6='export JAVA_HOME=$(/usr/libexec/java_home -v 1.6)'
alias setJdk8='export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)'

# script alias
alias spring_beans="~/.scripts/spring_beans.sh"
alias gimme_a_pair="ruby ~/.scripts/gimme_a_pair.rb"

# git alias
alias gpr="git svn rebase"
alias glo="git log --oneline"
alias gls="git log --oneline --stat"
alias gst="git status"
alias gsp="git stash pop"
alias gss="git stash save"
alias gsl="git stash list"
alias gsd="git stash drop"
alias gco="git checkout"
alias gci="git commit"
alias gsrsp="git stash && git svn rebase && git stash pop"

# mvn alias
alias mci="mvn clean install"
alias mcisbr="mvn clean install spring-boot:run"
alias mcist="mvn clean install -DskipTests"

# bash alias
alias size="du -h"
alias ls="ls -a"

# h2 alias
# alias h2connect="java -cp h2-1.4.187.jar org.h2.tools.Console"

function web_proxy_off() {
	sudo networksetup -setwebproxystate "Wi-Fi" off
	export http_proxy=""
}

function clear_postman() {
    echo 'rm -rf /Users/plad/Library/Application\ Support/Postman/IndexedDB/'
        rm -rf /Users/plad/Library/Application\ Support/Postman/IndexedDB/
}
