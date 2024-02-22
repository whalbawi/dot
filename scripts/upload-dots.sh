#!/usr/bin/env bash

SCRIPTS_DIR=$(dirname $0)
source $SCRIPTS_DIR/term.sh

HOST=$1
FILES="\
$HOME/.tmux.conf \
$HOME/.tmux-linux.conf \
$HOME/.vimrc"
print-bblue "Upload dot files to remote server\n"
print-bold "Target host: $HOST\n"
print-bold "Files:\n"
xargs -n1 -I% echo "    %" <<< $FILES

scp $FILES $1:~/ > /dev/null

print-bgreen "Upload complete!\n"

