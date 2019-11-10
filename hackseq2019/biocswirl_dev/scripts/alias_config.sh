#!/bin/bash

####################################################

#FILE         : alias_config
#DESCRIPTION  : bash script to store aliases used to launch biocswirl 

#OPTIONS      : ---
#REQUIREMENTS : bash
#BUGS         : ---
#NOTES        : ---

#AUTHOR       : LNC
#CONTACT      : ---
#DATE CREATED : Oct 18, 2019
#LAST REVISION: --- 

###################################################

#give biocswirl permission before launching
alias init_biocswirl='chmod 755 tmux_launch.sh' 

#launch tmux with 'biocswirl'
alias biocswirl='./tmux_launch.sh' 
