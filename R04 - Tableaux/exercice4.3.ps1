## Exercice 3: Défis

# 4.3.1. 🏆 Créer 10 fichiers nommés "Fichier 1.txt" à "Fichier 10.txt" dans le répertoire 
#        du profil de l'utilisateur.
1..10 | ForEach-Object {md ("Fichier" + $_ + ".txt")}


# 4.3.2. 🏆 Dressez la liste de tous les fichiers .EXE dans C:\Windows, sous forme d'un 
#         tableau montrant le nom du fichier en majuscules ainsi que la taille approximative 
#         en kilooctets, arrondi à l'entier près.
Get-ChildItem -Path "C:\Windows" | ? Name -like "*.exe" | Format-Table {($_.Name.ToUpper()),([Math]::Round($_.Length/1024))}


# 4.3.3. 🏆🏆 À partir de votre ligne de commande à la question 4.2.3, créez un fichier nommé 
#        "Service_nomduservice.txt" pour chaque service dans le répertoire courant. Chaque 
#        fichier doit contenir la liste détaillée de toutes les propriétés de ce service.
Get-Service | ? {($_.Name -Like "W*") -and ($_.Status -eq "Running") -and ($_.StartType -eq "Automatic")} | ForEach-Object {New-Item  ("Service_" + $_.Name + ".txt") -ItemType File}