#!/bin/bash

##############################################################################
#
# Quick Reference
#
# Setting Variables: NAME=VALUE
# Reference Variables: ${NAME}
# Command Substitution: $(command)
# Functions: function_name () { commands }
# IF statements: if [ condition ]; then #commands fi
#
##############################################################################


# Variables

# Functions
print_help() {
    echo "Usage: $(basename "$0") [OPTION]"
    echo ""
    echo "Description Placeholder"
    echo " "
    echo "-h, --help       display this help and text"
    echo 
    }


# Core Logic

## Help Function Call
while getopts "h" opt; do
    case $opt in
	h)
	    # Call the help function. Exit the script immediately afterwards.
	    print_help
	    exit ;;
    esac
done
## Main
    
# Error Checking
