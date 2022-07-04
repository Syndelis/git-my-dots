#!/bin/bash

BASE="\033"
CLEAN="$BASE[m"
BLACK="$BASE[30m"
RED="$BASE[31m"
GREEN="$BASE[32m"
YELLOW="$BASE[33m"
PURPLE="$BASE[34m"
PINK="$BASE[35m"
CYAN="$BASE[36m"

TARGET_DIR=$HOME/.local/bin

printf "$GREEN[Installation Medium]$CLEAN Created a ${CYAN}Symbolic Link$CLEAN to ${PINK}git-my-dots$CLEAN at $PURPLE$TARGET_DIR$CLEAN\n"

if [[ ":$PATH:" == *":$TARGET_DIR:"* ]]
then
	printf "$GREEN[Installation Medium]$CLEAN The directory is already on ${YELLOW}PATH$CLEAN! You're good to go!\n"
else
	RC_FILE="$HOME/.$(basename $SHELL)rc"
	printf "$GREEN[Installation Medium]$CLEAN Make sure the directory is on ${YELLOW}PATH$CLEAN! Your current ${YELLOW}PATH$CLEAN: $PURPLE$PATH$CLEAN\n"
	printf "$GREEN[Installation Medium]$PURPLE[Suggestion]$CLEAN Add the following line to $CYAN$RC_FILE$CLEAN:\n"
	printf "$GREEN[Installation Medium]$PURPLE[Suggestion]$CLEAN ${CYAN}export PATH=$TARGET_DIR/:\$PATH$CLEAN\n"
fi

mkdir -p $TARGET_DIR
ln -s "$(pwd)/git-my-dots" $HOME/.local/bin