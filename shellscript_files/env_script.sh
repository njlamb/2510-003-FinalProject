#!/usr/bin/env bash

# echo "script started"

eval "$(ssh-agent -s)"

# Add key to ssh key directory
ssh-add /home/njlamb42/.ssh/id_ed25519

# echo "private key added"

# Set permissions to clone repository
sudo chown -R njlamb42:njlamb42 /var/www/html

# Clone your git repository
git clone git@github.com:ttu-bburchfield/swollenhippofinal.git

# Checkout to branch of your choice
git checkout $1
