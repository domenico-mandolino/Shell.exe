#!/bin/bash

# Récupère le premier argument comme nom du nouveau fichier
cat="$1"

# Copie le contenu du fichier source vers le nouveau fichier en utilisant la redirection
cat /etc/passwd > "$1"

# Affichez un message indiquant que la copie a été effectuée
echo "Le contenu de ~/etc/passwd a été copié dans '$1'"
