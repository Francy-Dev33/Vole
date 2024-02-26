#!/bin/bash

read -p "Inserisci il tuo indirizzo email: " email

ssh-keygen -t ed25519 -C "$email"

eval " $(ssh-agent -s)"

echo "AddKeysToAgent yes" > ~/.ssh/config
echo "IdentityFile ~/.ssh/id_ed25519" >> ~/.ssh/config

echo "Configurazioni completate."
