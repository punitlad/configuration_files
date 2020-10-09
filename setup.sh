#!/bin/bash
 
install_brew() {
    if ! [ -x "$(command -v brew)" ]; then
        echo "Installing brew..."
	    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    fi
}

install_oh_my_zsh() {
    echo "Installing oh-my-zsh..."
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
}

install_personalrc() {
    echo "Updating personal shell configuration..."
    cp personalrc ~/.personalrc
    echo "source ~/.personalrc" >> ~/.zshrc
}

install_vimrc() {
    echo "Updating vim configuration..."
    cp vimrc ~/.vimrc
}

install_gitconfig() {
    echo "Updating global git configuration..."
    cp gitconfig ~/.gitconfig
    cp gitignore_global ~/.gitignore_global
}

print_message() {
    echo "Things to do manually..."
    echo "Create and update .gitconfig_personal..."
    echo "Update ssh keys..."
    echo "source ~/.zshrc..."
    echo "Install Firefox and Brave bookmarks"
}

install_brew
brew bundle
install_oh_my_zsh
install_personalrc
install_vimrc
install_gitconfig
print_message
