#Ex. 5.1
#Dans PowerShell, utilisez la commande Get-Content pour voir le contenu de ce fichier texte.
Get-Content C:\Users\6323681\Desktop\starwars.csv

#Ex. 5.2
#Utilisez maintenant la commande Import-Csv pour importer le fichier sous forme d'un tableau d'objets.
Import-Csv C:\Users\6323681\Desktop\starwars.csv

#** Attention au délimiteur! **

#Ex. 5.3
#Donnez le prénom et le nom des contrebandiers, en ordre alphabétique de nom.
Import-Csv C:\Users\6323681\Desktop\starwars.csv -Delimiter ';' | Where-Object -Property Profession -eq Contrebandier | Select-Object -Property prenom,Nom | Sort-Object -Property Nom

#Ex. 5.4.
#Sauvegardez ces nouvelles données dans le fichier contrebandiers.csv afin qu'il puisse être ouvert dans Excel (donc encore attention au délimiteur. Attention aussi à la première ligne qui contient l'information de type. Le fichier devrait ressembler à ceci:
Import-Csv C:\Users\6323681\Desktop\starwars.csv -Delimiter ';' | Where-Object -Property Profession -eq Contrebandier | Select-Object -Property prenom,Nom | Sort-Object -Property Nom |Export-Csv C:\Users\6323681\Desktop\contrebandiers.csv

#Le fichier devrait pouvoir être ouvert dans Excel sans erreur