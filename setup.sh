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

install_sshconfig() {
	echo "Creating .ssh/ and updating config file"
	mkdir ~/.ssh/
	cp sshconfig ~/.ssh/config
}

set_mac_configuration() {
    # Dock things
    defaults write com.apple.dock persistent-others {}
    defaults write com.apple.dock persistent-apps {}
    defaults write com.apple.dock recent-apps {}
    defaults write com.apple.dock magnification -bool false
    defaults write com.apple.dock autohide -bool true
    defaults write com.apple.dock tilesize -integer 10
    defaults write com.apple.dock autohide -bool true
    defaults write com.apple.dock show-recents -bool false
    defaults write com.apple.dock autohide-delay -float 0
    defaults write com.apple.dock autohide-time-modifier -float 0

    # Mission Control / Spaces things 
    defaults write com.apple.dock mru-spaces -bool false

    # Keyboard Things
    defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false
    defaults write NSGlobalDomain KeyRepeat -int 1
    defaults write NSGlobalDomain InitialKeyRepeat -int 10

    # Autocorrection Things
    defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool false
    defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false
    defaults write NSGlobalDomain NSAutomaticPeriodSubstitutionEnabled -bool false
    defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false
    defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false
    defaults write NSGlobalDomain NSUserDictionaryReplacementItems {}

    # Trackpad things
    defaults write NSGlobalDomain com.apple.swipescrolldirection -bool true
    defaults write NSGlobalDomain com.apple.trackpad.scaling -int 3

    # Set Canada Things
    defaults write NSGlobalDomain AppleLanguages -array "en-CA"
    defaults write NSGlobalDomain AppleLocale -string "en_CA@currency=CAD"
    defaults write NSGlobalDomain AppleMeasurementUnits -string "Centimetres"
    defaults write NSGlobalDomain AppleMetricUnits -bool true

    # Lock Screen Things
    defaults write com.apple.screensaver askForPassword -int 1
    defaults write com.apple.screensaver askForPasswordDelay -int 0

    # Screenshot Things
    defaults write com.apple.screencapture location -string "${HOME}/Desktop"
    defaults write com.apple.screencapture type -string "png"
    defaults write com.apple.screencapture disable-shadow -bool true

    # Finder things
    defaults write com.apple.finder AppleShowAllFiles -bool true
    defaults write NSGlobalDomain AppleShowAllExtensions -bool true
    defaults write com.apple.finder ShowStatusBar -bool true
    defaults write com.apple.finder ShowPathbar -bool true
}

print_message() {
    echo "Things to do manually..."
    echo "Create and update .gitconfig_personal..."
    echo "Update ssh keys..."
    echo "source ~/.zshrc..."
}

# install_brew
# brew bundle
# install_oh_my_zsh
# install_personalrc
# install_vimrc
# install_gitconfig
# install_sshconfig
set_mac_configuration
# print_message
