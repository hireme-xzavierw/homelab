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
    ["feat"]="Adds a new feature"
    ["fix"]="Fixes a bug"
    ["refactor"]="Neither fixes a bug nor adds a feature, but rewrites/restructers your code"
    ["chore"]="Does not relate to a fix or feature and doesn't modify src or test files \"e.g.\", modifying .gitignore, renaming files or directories."
    ["perf"]="For the purpose of improving performance"
    ["ci"]="Related to continous integration"
    ["ops"]="Affects operational components like infrastructure, deployment, backup recovery etc."
    ["build"]="Affects the system build tool, ci pipeline, dependencies, project version etc."
    ["docs"]="Affects the documentation, such as the README."
    ["style"]="Does not change the meaning of the code. Related to formatting.\"e.g.\" white-space, missing semi-colons, etc."
    ["revert"]="Reverts to a previous commit."
    ["test"]="Adds missing tests or corrects existing tests"
)

# Functions

print_types() {

    # Iterate through the types dictionary and print all options to stdout.
    
    for key in "${!types[@]}"; do
	echo "$key: ${types[$key]}" 
    done
    
    }

# Core Logic

# Actually print the types and their descriptions with the function declared earlier.
print_types


# Error Checking
