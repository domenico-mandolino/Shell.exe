#!/bin/bash

# Récupérez les nombres et l'opérateur passés en entrée
nombre1="$1"
operateur="$2"
nombre2="$3"

# Effectuez l'opération correspondante en utilisant bc avec une précision de deux décimales
case "$operateur" in
    "+")
        resultat=$(echo "scale=2; $nombre1 + $nombre2" | bc)
        ;;
    "-")
        resultat=$(echo "scale=2; $nombre1 - $nombre2" | bc)
        ;;
    
     "x"|"X")
     
        resultat=$(echo "scale=2; $nombre1 * $nombre2" | bc)
        ;;
    "/")
        # Vérifiez si le deuxième nombre est zéro pour éviter une division par zéro
        if [ "$nombre2" -eq 0 ]; then
            echo "Erreur : Division par zéro impossible."
            exit 1
        fi
        resultat=$(echo "scale=2; $nombre1 / $nombre2" | bc)
        ;;
    *)
        echo "Opérateur invalide. Utilisez '+', '-', 'x','X' ou '/'."
        exit 1
        ;;
esac

# Affichez le résultat de l'opération
echo "Résultat : $resultat"







