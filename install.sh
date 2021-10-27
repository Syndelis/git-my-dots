BASE="\033"
CLEAN="$BASE[m"
BLACK="$BASE[30m"
RED="$BASE[31m"
GREEN="$BASE[32m"
YELLOW="$BASE[33m"
PURPLE="$BASE[34m"
PINK="$BASE[35m"
CYAN="$BASE[36m"

printf "$GREEN[Installation Medium]$CLEAN Created a ${CYAN}Symbolic Link$CLEAN to ${PINK}git-my-dots$CLEAN at $PURPLE$HOME/.local/bin$CLEAN. Make sure that's on ${YELLOW}PATH$CLEAN!
$GREEN[Installation Medium]$CLEAN Your current ${YELLOW}PATH$CLEAN: $PURPLE$PATH$CLEAN\n"

ln -s "$(pwd)/git-my-dots" $HOME/.local/bin