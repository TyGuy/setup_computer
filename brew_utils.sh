#!/bin/sh

### Brew some stuff -- probably forgetting things...
brew install wget
brew install hub
brew install jq
brew install ag
brew install ctags
brew install go

# need to tap snyk first
brew tap snyk/tap
brew install snyk
