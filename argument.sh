if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <nouveauFichier> <contenu>"
    exit 1
fi

nouveauFichier="$1"
contenuFichier="$2"

cat "$contenuFichier" > "$nouveauFichier"

if [ $? -eq 0 ]; then
    echo "Le contenu du fichier $contenuFichier a été copié avec succès dans $nouveauFichier."
else

