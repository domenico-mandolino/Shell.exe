#!/bin/bash

# Mettre à jour la liste des paquets disponibles
sudo apt update

# Mettre à jour tous les paquets installés
sudo apt upgrade -y

# Nettoyer le cache des paquets téléchargés
sudo apt autoremove -y
sudo apt clean

echo "Mise à jour des paquets terminée.
