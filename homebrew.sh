#!/bin/sh

if hash brew 2>/dev/null; then
  echo "(brew command already exists. Skipping this step)"
else
  echo "installing homebrew and cask"

  # get homebrew
  ruby -e "$(curl -fsSL "https://raw.githubusercontent.com/Homebrew/install/master/install")"

  # install homebrew cask
  brew tap caskroom/cask
fi
