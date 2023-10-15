utilisateur="votre_utilisateur"

nombre_connexions=$(who | grep -c "$utilisateur")

date_format=$(date +"%d-%m-%Y-%H:%M")
fichier="number_connection-$date_format"

echo "$nombre_connexions" > "$fichier"

archive="Backup/$fichier.tar"
tar -cvf "$archive" "$fichier"

mv "$archive" ~/Job8:Backup/
