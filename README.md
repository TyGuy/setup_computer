# Setting up my macbook

This might be helpful for myself or others in the future

### Setup:

```sh
# optional: I make a directory like: ~/code, but you can do this wherever
mkdir ~/code && cd ~/code

git clone git@github.com:TyGuy/setup_computer.git
cd setup_computer

# IMPORTANT: create a file ~/.specifics that has the following keys:
# HOMEBREW_GITHUB_API_TOKEN: A GH personal access token for homebrew
#   (because this script hits brew a lot and sometimes exceeds public API capacity)
# GITHUB_EMAIL: your github email (for ssh key generation)
touch ~/.specifics

# DO THE THING:
./setup.sh
```

### Contributing:

Probably best thing to do is to fork it and make it your own. But if there are general improvements (or simply a better way to do this), definitely let me know what you think they are. Feel free to open a Pull Request (but it better have tests).
