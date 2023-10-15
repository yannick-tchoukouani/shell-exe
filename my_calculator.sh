if [ "$#" -ne 3 ]; then
    echo "Usage: $0 <nombre1> <opérateur> <nombre2>"
    exit 1
fi

nombre1="$1"
operateur="$2"
nombre2="$3"

case "$operateur" in
    +) resultat=$(($nombre1 + $nombre2))
       ;;
    -) resultat=$(($nombre1 - $nombre2))
       ;;
    /) if [ "$nombre2" -eq 0 ]; then
           echo "Erreur : Division par zéro."
           exit 1
       fi
       resultat=$(awk "BEGIN { printf \"%.2f\", $nombre1 / $nombre2 }")
       ;;
    *) echo "Opérateur non reconnu. Utilisez '+', '-' ou '/'."
       exit 1
       ;;
esac

echo "Résultat : $resultat"
