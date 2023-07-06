# This file is intended to download the FiraCode font file and configure it to be used in the WSL system. 
# TODO: There will be a need to write a similar script or something that installs the font in the Windows side of things


# Make directory to hold fonts

mkdir ~/.fonts
cd ~/.fonts

# Download FiraCode from GitHub. 
# TODO: Find a way to get the latest version of the font and then add it here

 # wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/FiraCode.zip

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
