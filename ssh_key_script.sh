#!/bin/bash

echo "Enter your email: "
read email

key_file="$HOME/.ssh/id_ed25519"

ssh-keygen -t ed25519 -C "$email" -f "$key_file"

echo "Your ssh key: "
cat "$key_file.pub"

