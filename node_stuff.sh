#!/bin/sh

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash

# to find the latest node version:
# nvm ls-remote | tail -1
nvm install node
nvm install 18
nvm install 16

nvm alias default 18