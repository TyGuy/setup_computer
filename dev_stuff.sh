#!/bin/sh

# github ssh key:
# TODO: remove my actual email address
ssh-keygen -t rsa -b 4096 -C "$GITHUB_EMAIL"

eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa

pbcopy < ~/.ssh/id_rsa.pu
echo "NOW: paste into your github account"


# Dotfiles
git clone git@github.com:TyGuy/dotfiles.git ~/.dotfiles
# install the dotfiles symlinks
cd ~/.dotfiles && .install.sh


# ZSHELL and oh-my-zsh
brew install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
mv ~/.zshrc.pre-oh-my-zsh ~/.zshrc

### Brew some stuff -- probably forgetting things...
brew install wget
brew install hub

# DB and stores:
brew install mysql
brew services start mysql
brew install postgresql
brew services start postgresql
brew install redis
brew services start redis

# vim stuff:
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

# rbenv and ruby stuff
brew install rbenv
rbenv install 2.3.0
rbenv global 2.3.0

# some global gems
gem install rails
gem install bundler
gem install foreman
gem install pry

# node and stuff
brew install nvm
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.32.1/install.sh | bash
echo "probably restart terminal..."

# to find the latest node version:
# nvm ls-remote | tail -1
nvm install v7.2.1

# atom stuff
apm install sync-settings
# now, follow the steps here to add (1) access token and (2) gist:
# https://atom.io/packages/sync-settings
#
# Also, can fork gist from:
# https://gist.github.com/TyGuy/5ffb713dd52b55a860f170df4a78cbdb
# with sync-settings:fork command in atom
