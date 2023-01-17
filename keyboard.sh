#!/bin/sh

# setup keyboard repeat interval
defaults write -g InitialKeyRepeat -int 10 # normal minimum is 15 (225 ms)
defaults write -g KeyRepeat -int 1 # normal minimum is 2 (30 ms)

# enable keyboard repeat when you "press-and-hold" for VSCode (confusingly, set to false)
defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false

# same thing for IntelliJ
defaults write com.jetbrains.Intellij ApplePressAndHoldEnabled -bool false