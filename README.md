# Setting up my macbook

These are basically the commands I ran to setup a new macbook air (M2 chip) in early 2023. I figured this might be helpful for myself or others in the future.

The commands are shown here as scripts, but I ran a lot of these steps manually. Use at your own risk, and note that YMMV.
---
## Before scripts:
Recommended first steps:
* Sign in and set up Apple ID
* Add other touch ID fingers
* Enable dictation
* Turn on do-not-disturb automatically, for all day
* Connect bluetooth keyboard/mouse
* Re-map caps-lock to escape key (If you are weird like me)
* Open Safari, and download Chrome, and 1Password.
  * Sign into 1Password. This will make other things a lot easier to set up.
  * Get 1Password browser extension for Chrome (or whatever browser you're using).

## Setup:
Open terminal, and run this:

```sh
# run this command, it will prompt you to install xcode and developer tools
git

# optional: I make a directory like: ~/code, but you can do this wherever
mkdir ~/code; cd ~/code

git clone https://github.com/TyGuy/setup_computer.git
cd setup_computer

# copy this, then open it in vim and add specific credentials
cp ./setup_creds.txt ~/.setup_creds
vim ~/.setup_creds

# "Run" the script.
# NOTE: In practice, this is just a short-hand for looking in this file, and seeing what sub-scripts are useful to you.
# Most, but not all, will probably be useful; and you may need/want some further customization to fit your needs.
./setup.sh

```
---
## Contributing:

Probably best thing to do is to fork it and make it your own. But if there are general improvements (or simply a better way to do this), definitely let me know what you think they are. Feel free to open a pull request!
