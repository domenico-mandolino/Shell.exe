# Récupérez l'argument passé en entrée
argument="$1"

# Vérifiez la valeur de l'argument et affichez le message approprié
if [ "$argument" == "Hello" ]; then
    echo "Bonjour, je suis un script !"
elif [ "$argument" == "Bye" ]; then
    echo "Au revoir et bonne journée !"
else
    echo "Argument invalide. Utilisez 'Hello' ou 'Bye'."
fi
