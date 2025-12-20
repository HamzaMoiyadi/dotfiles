# install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash

# install set node version to latest
nvm install --lts --default

# Install the zsh plugins that I absolutely adore. 
# Since I don't use oh-my-zsh anymore, the plugins downloaded here are sourced directly in the `.zshrc` file.
# Requires `npx` to be installed so that the git repositories for the plugins can be cloned without their `.git` folder. 
# TODO: remove dependency on `npx`


PLUGIN_DIR=~/.zsh/plugins
# Create .zsh/plugins directory in the home directory if not created already
mkdir -p PLUGIN_DIR

# ZSH Autosuggestions
npx degit https://github.com/zsh-users/zsh-autosuggestions $PLUGIN_DIR/zsh-autosuggestions

# ZSH Syntax Highlighting
npx degit https://github.com/zsh-users/zsh-syntax-highlighting.git $PLUGIN_DIR/zsh-syntax-highlighting



# Install Rust
echo "********** SETTING UP RUST ************"

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
# You need rust to be installed before this. 
cargo install du-dust eza zoxide



# This file is intended to download the FiraCode font file and configure it to be used in the WSL system. 
# TODO: There will be a need to write a similar script or something that installs the font in the Windows side of things
echo "********** SETTING UP FIRA CODE ************"

# Make directory to hold fonts

mkdir ~/.fonts
cd ~/.fonts

# Download FiraCode from GitHub. 
# TODO: Find a way to get the latest version of the font and then add it here

wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/FiraCode.zip

# Check if fontconfig is installed or not

isFontConfigInstalled=$(ldconfig -p | grep 'fontconfig')
# `-z` stands for "is the output string from the variable empty". kinda.
if [ -z $isFontConfigInstalled ]
then
	echo 'library fontconfig not found. \nInstalling...\n';
	sudo apt install fontconfig -y
else
	echo 'library fontconfig is installed.'
fi

# Check if unzip is installed

isUnzipInstalled=$(ldconfig -p | grep 'unzip')
