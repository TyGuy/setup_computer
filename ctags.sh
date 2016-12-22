#!/bin/sh

# note this will clone into the cwd, but you might want
# it somewhere else, so think about it
git clone git@github.com:TyGuy/setup_ctags.git

cd setup_ctags
ruby setup_ctags.rb
