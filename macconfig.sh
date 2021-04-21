#!/bin/bash

# Dock things
defaults write com.apple.dock persistent-others {}
defaults write com.apple.dock persistent-apps {}
defaults write com.apple.dock recent-apps {}
defaults write com.apple.dock magnification -bool false
defaults write com.apple.dock autohide -bool true
defaults write com.apple.dock tilesize -integer 20
defaults write com.apple.dock show-recents -bool false
defaults write com.apple.dock autohide-delay -float 2
defaults write com.apple.dock autohide-time-modifier -float 2

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
	defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerHorizSwipeGesture -int 0

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

# System UI Bar
defaults write com.apple.systemuiserver "NSStatusItem Visible com.apple.menuextra.bluetooth" -bool true
defaults write com.apple.systemuiserver menuExtras -array-add "/System/Library/CoreServices/Menu Extras/Bluetooth.menu"
defaults write com.apple.systemuiserver "NSStatusItem Visible com.apple.menuextra.volume" -bool true
defaults write com.apple.systemuiserver menuExtras -array-add "/System/Library/CoreServices/Menu Extras/Volume.menu"

# Shortcuts
# remove cmd+shift+a from shortcut 