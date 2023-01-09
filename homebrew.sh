#!/bin/sh

if hash brew 2>/dev/null; then
  echo "(brew command already exists. Skipping this step)"
else
  echo "installing homebrew"

  # get homebrew
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" 

  # NOTE: these are the "Next Steps" after installing homebrew, as of 2022-01-09
  echo '# Set PATH, MANPATH, etc., for Homebrew.' >> /Users/tylerdavis/.zprofile
  echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/tylerdavis/.zprofile
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi


