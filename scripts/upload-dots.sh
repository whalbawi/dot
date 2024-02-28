#!/usr/bin/env bash

SCRIPTS_DIR=$(dirname $(realpath ${BASH_SOURCE[0]}))
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

scp -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null $FILES $1:~/

print-bgreen "Upload complete!\n"

