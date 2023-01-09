#!/bin/sh

# FIRST: create this file and add keys (see README)
. ~/.setup_creds

. ./homebrew.sh
. ./applications.sh
. ./brew_utils.sh
. ./dotfiles.sh

# At this point, use iTerm to set this up.
. ./zsh.sh

. ./vim_stuff.sh
. ./datastores.sh

# . ./ruby_stuff.sh
# . ./heroku.sh
. ./node_stuff.sh
. ./java_stuff.sh

. ./aws.sh


# . ./ctags.sh
