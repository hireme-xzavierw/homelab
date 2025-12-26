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
    types["refactor"]="refactored code that neither fixes a bug nor adds a feature, but rewrites
                       /restructers your code"
    types["chore"]="changes that do not relate to a fix or feature and don't modify src or test files,                     \"e.g.\", modifying .gitignore, renaming files or directories."
    types["perf"]="Commits which refactor for the purpose of improving performance"
    types["ci"]="Commits which are related to continous integration"
    types["ops"]="Commits whic affect operational components like infrastructure, deployment, backup
                  recovery etc."
    types["build"]="Commits which affect the system build tool, ci pipeline, dependencies, project
                    version etc."
    types["docs"]="Commits which affect the documentation, such as the README."
    types["style"]="Commits which do not change the meaning of the code, related to formatting
                    such as white-space, missing semi-colons, etc."
    types["revert"]="Commits which revert a previous commit."
    types["test"]="Commits which add missing tests or correct existing tests"
)

# Functions

print_types() {

    for type in "${!types[@]}"; do
	echo "$key: ${types[$key]}" 
    
    }

# Core Logic



# Error Checking
