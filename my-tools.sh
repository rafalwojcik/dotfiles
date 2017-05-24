#!/usr/bin/env bash

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.macos` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Install RVM with latest stable ruby
curl -sSL https://get.rvm.io | bash -s stable --ruby
source /Users/rafalwojcik/.rvm/scripts/rvm

# Install gems
sudo gem install cocoapods
sudo gem install synx
sudo gem install fastlane -NV

# Install brew things
brew install swiftlint

# Install xcode theme
mkdir ~/Library/Developer/Xcode/UserData/FontAndColorThemes
cp ./sources/XcodeThemes/* ~/Library/Developer/Xcode/UserData/FontAndColorThemes

# Git configuration
git config --global user.name "Rafał Wójcik"
git config --global user.email rafalwojcik@me.com
git config --global merge.tool opendiff
