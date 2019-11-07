#!/bin/sh

biosyntax.sh(){
    if  [ "$(uname)" == "Linux" ]; then
        sudo add-apt-repository ppa:biosyntax/ppa
        sudo apt-get update
        sudo apt-get install biosyntax-vim
    elif [ "$(uname)" == "Darwin" ]; then
        sudo brew install git
        mkdir -p ~/.vim/autoload ~/.vim/bundle && \
        curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
        cd ~/.vim/bundle &&
        git clone https://github.com/bioSyntax/bioSyntax-vim.git

        mkdir -p ~/.vim ~/.vim/syntax ~/.vim/ftdetect ~/.vim/colors
}
