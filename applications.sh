#!/bin/sh

tryInstall() {
  if hash $1 2>/dev/null; then
    echo "$1 already installed"
  else
    brew cask install $1
  fi
}

tryInstall "google-chrome"
tryInstall "atom"
tryInstall "slack"
tryInstall "iterm2"
tryInstall "alfred"
tryInstall "1password"
tryInstall "firefox"
tryInstall "skype"

brew cask cleanup
