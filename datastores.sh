#!/bin/sh

# DB and stores:
brew install mysql
brew services start mysql
brew install postgresql
brew services start postgresql
brew install redis
brew services start redis
