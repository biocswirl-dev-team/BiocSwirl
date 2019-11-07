#!/bin/bash

source config/path.conf

if  [ "$(uname)" == "Linux" ]; then
	printf "Linux installation unavailable."
    exit 1
elif [ "$(uname)" == "Darwin" ]; then
	printf "Uninstalling biovim... \\n"
	sudo rm ~/.biovimrc
	sudo rm /usr/local/bin/biovim
	printf "Biovim sucessfully uninstalled! \\n"
else
	printf "Biovim is not currently supported on your platform.\\n"
fi

printf "\n"

