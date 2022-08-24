#!/bin/sh

echo "User home directory: $HOME"
for dotfile in `find $(pwd -P)/files -type f`; do
    echo "Processing: $dotfile"
    ln -s $dotfile $HOME
done
echo "Done"
