#!/bin/bash

##############################################################################
#
# Quick Reference
#
# Setting Variables: NAME=VALUE
# Reference Variables: ${NAME}
# Command Substitution: $(command)
#
##############################################################################


# Variables

## Types of commits
declare -A types=(
    types["feat"]="Commit which adds a new feature"
    types["fix"]="Commit which fixes a bug"
    types["refactor"]="refactored code that neither fixes a bug nor adds a feature, but rewrites/restructers your code"
    types["chore"]="changes that do not relate to a fix or feature and don't modify src or test files, \"e.g.\", updating dependencies, modifying .gitignore, renaming files or directories."
    types["feat"]="Commits which add a new feature"
    types["feat"]="Commits which add a new feature"
    types["feat"]="Commits which add a new feature"
    types["feat"]="Commits which add a new feature"
    types["feat"]="Commits which add a new feature"
    types["feat"]="Commits which add a new feature"
    types["feat"]="Commits which add a new feature"
    types["feat"]="Commits which add a new feature"
)

# Core Logic

# Error Checking
