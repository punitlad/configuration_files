#!/bin/bash
 
brew() {
    if ! [ -x "$(command -v brew)" ]; then
        echo "Installing brew..."
	    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    fi

    echo "Homebrew installed. Running brew bundle"
    brew bundle -v
}

ohmyzsh() {
    echo "Installing oh-my-zsh..."
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
}

personalrc() {
    echo "Updating personal shell configuration..."
    cp personalrc ~/.personalrc
    read -p "Enter shell rc file path: " shellrcfilepath
    if [ -z "$shellrcfilepath" ]
    then
        echo "No shell rc file path given. Exiting..."
        exit 1
    fi
    echo "source ~/.personalrc" >> $shellrcfilepath
}

workrc() {
    echo "Generating empty workrc file" 
    touch ~/.workrc
}

vimrc() {
    echo "Updating vim configuration..."
    cp vimrc ~/.vimrc
}

gitconfig() {
    echo "Updating global git configuration..."
    cp gitconfig ~/.gitconfig
    cp gitignore_global ~/.gitignore_global

    echo "Setup username and email for git"
    read -p "Enter your full name: " name
    read -p "Enter your personal git email: " email
    sed "s/gitemailid/$email/g; s/gitfullname/$name/g" gitconfig_personal > ~/.gitconfig_personal

    echo "Setting up Git configuration for work"
    read -p "Enter your work git email: " workemail
    sed "s/gitemailid/$workemail/g; s/gitfullname/$name/g" gitconfig_personal > ~/.gitconfig_work
}

sshconfig() {
	echo "Creating .ssh/ and updating config file"
	mkdir ~/.ssh/
	cp sshconfig ~/.ssh/config
}

vscode() {
    cp vscodesettings.json ~/Library/Application\ Support/Code/User/settings.json
}

macconfig() {
    ./mac_config.sh
}

print_message() {
    echo "Things to do manually..."
    echo "Create work and personal ssh keys..."
    echo "You may need to log in and out for mac os configurations to be reflected..."
}

$1
