#!/bin/bash

# Get the binary from github and install the command
echo 'Fetching Zoxide installer...'

curlCMD="curl https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | bash"
eval $curlCMD
echo "\nZoxide installed!\nAdding init script to ZSH now...\n"

# Add zoxide init to zshrc

echo 'eval "$(zoxide init zsh)"' >> ~/.zshrc
echo "\nZoxide configured!\n"

echo 'Deleteing `install.sh`...'
rm ./install.sh
echo 'Deleted `install.sh`!'
