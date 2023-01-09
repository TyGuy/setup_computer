#!/bin/sh

brew install jenv

wget https://corretto.aws/downloads/latest/amazon-corretto-11-aarch64-macos-jdk.pkg
open amazon-corretto-11-aarch64-macos-jdk.pkg

# There should be accompanying stuff in .zshrc