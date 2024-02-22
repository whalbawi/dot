#!/usr/bin/env bash

ROOT_DIR=$(dirname $0)
source $ROOT_DIR/scripts/term.sh

print-bold "User home directory: $HOME\n\n"

print-bblue "Link dot files\n"
for dotfile in $(find $(pwd -P)/files -type f ! -name '*.swp'); do
    print-bblue "    Processing: "; printf "$dotfile\n"
    ln -s $dotfile $HOME
done
print-bgreen "Done!\n\n"

SSH_SCRIPTS_DIR=$HOME/.ssh/scripts
print-bblue "Configure SSH\n"
mkdir -p $SSH_SCRIPTS_DIR
ln -s $ROOT_DIR/scripts/upload-dots.sh $SSH_SCRIPTS_DIR
print-bgreen "Done!\n\n"
