#!/bin/bash

##############################################################################
#
# Quick Reference
# ----------------------------------------------------------------------------
# Setting Variables: NAME=VALUE
# Reference Variables: ${NAME}
# Command Substitution: $(command)
#
#
# Prologue: welltodo
# -----------------------------------------------------------------------------
#
# A very small bash script for adding org mode TODO objects to files quickly
# without opening emacs.
#
#  This script takes the string that represents the TODO item as the first
#  input. It must be presented within double quotes like so: "Example todo"
#
#  The file that the TODO keyword should be added to is taken as the second
#  input.
# 
#
##############################################################################


# Variables

# Set the text that triggers todo functionality to a variable in case this
# script grows and I need to edit the line many times quickly.
todo_line="* TODO: "

# Core Logic

echo ${todo_line} $1 >> $2


# Error Checking
