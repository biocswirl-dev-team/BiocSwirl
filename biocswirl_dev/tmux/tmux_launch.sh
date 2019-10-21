#!/bin/sh

####################################################

#FILE         : tmux_launch
#DESCRIPTION  : shell script for launching tmux in the correct config for biocswirl

#OPTIONS      : Can be configured as desired 
#REQUIREMENTS : tmux
#BUGS         : ---
#NOTES        : ---

#AUTHOR       : LNC
#CONTACT      : lisanatashacao@gmail.com
#DATE CREATED : Oct 18, 2019 
#LAST REVISION: --- 

####################################################

# Open vim
tmux new-session -d 'vim'

# Create a split window for radian
tmux split-window -h 'radian'

# Not very sure what this does
tmux -2 attach-session -d

# Enable mouse mode (tmux 2.1 and above)
set -g mouse on