#!/bin/bash

source config/path.conf

printf " usage: bash INSTALL.sh <vimrc_path (optional)> \\n"

if [ -z "$1" ]; then
	printf " biovim v1.0.0 \\n"
	printf " -----------------------\\n"
	printf " Select: (1) Auto-installation (2) Manual installation (Q) quit\\n"
	printf "\\n"
	read -p "  Enter: " input
	case $input in
		[1]*)
			installation='auto';;
		[2]*)
			installation='manual';;
		[Q]*)
			exit 1;;
	esac
else
	installation='$1'
fi

if  [ "$(uname)" == "Linux" ]; then
	printf "Linux installation unavailable."
    exit 1
elif [ "$(uname)" == "Darwin" ]; then
    sudo wget "https://github.com/bioSyntax/bioSyntax/releases/download/v1.0.0/bioSyntax-1.0.0.zip"
    sudo unzip -a bioSyntax-1.0.0.zip
    sudo rm -f bioSyntax-1.0.0.zip

    sudo mkdir -p ~/.vim ~/.vim/syntax ~/.vim/ftdetect ~/.vim/colors
    sudo cp bioSyntax-master/vim/syntax/*.vim ~/.vim/syntax/
    sudo cp bioSyntax-master/vim/ftdetect/*.vim ~/.vim/ftdetect/
    sudo cp bioSyntax-master/vim/colors/bioSyntax.vim ~/.vim/colors/

    rm -rf biovim.app
    appify biovim
    sudo cp $BIOVIM_PATH/config/biovim/.biovimrc ~
    sudo cp $BIOVIM_PATH/biovim.app/Contents/MacOS/biovim /usr/local/bin
else
	printf "Biovim is not currently supported on your platform.\\n"
fi

printf "\n"