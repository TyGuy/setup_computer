#!/bin/sh

# Configure user and email to be used by git
git config --global user.name "$GITHUB_USER"
git config --global user.email "$GITHUB_EMAIL"

# Generate SSH key and associate it with your GitHub account
ssh-keygen -t ed25519 -C $(git config user.email)
# start ssh agent
eval "$(ssh-agent -s)"
# add key to ssh agent
ssh-add ~/.ssh/id_ed25519 

