#!/bin/bash
echo "Enter the your e-mail : "
read MAIL
ssh-keygen -t ed25519 -C "$MAIL"

echo "Start ssh-agent"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519

echo "Done, Check this Docs for add ssh key to Git"