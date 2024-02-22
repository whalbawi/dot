#!/usr/bin/env bash

cat <<EOF > config.tmp
Include ~/.ssh.conf
EOF
cat ~/.ssh/config >> config.tmp
mv config.tmp ~/.ssh/config
