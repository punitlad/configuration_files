#!/bin/bash

if ! [ -x "$(command -v bash)" ]; then
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi
brew update && brew upgrade

cask_packages=( iterm2 brave-browser 1password intellij-idea visual-studio-code slack zoomus caffeine dash docker firefox franz keybase nordvpn postman simplenote spectacle steam vlc )
for i in "${cask_packages[@]}";
do
	if brew cask ls --versions $i > /dev/null; then
  		echo "$i is already installed. skipping"
	else
  		brew cask install $i
	fi
done

packages=( wget java awscli git gradle jq kops kubernetes-cli lua maven node openssl pwgen postgresql python python3 readline redis sbt scala terraform thefuck watch wget )
for i in "${packages[@]}";
do
	if brew ls --versions $i > /dev/null; then
		echo "$i is already installed. skipping"
	else
		brew install $i
	fi
done

#sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
#brew install sqlcl

cp .bashrc ~/.bashrc
cp .vimrc ~/.vimrc
cp .gitconfig ~/.gitconfig
cp .gitignore_global ~/.gitignore_global
source ~/.bashrc

# setup .gitconfig_personal here [user and token] 
