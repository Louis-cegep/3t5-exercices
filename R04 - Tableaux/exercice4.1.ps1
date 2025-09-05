## Exercice 1: Les fichiers

# 4.1.1. Obtenir tous les fichiers contenus dans le répertoire C:\Windows.
Get-ChildItem -Path "C:\Windows"


# 4.1.2. Obtenir tous les fichiers contenus dans le répertoire C:\Windows, triés par ordre 
#        décroissant de taille.
Get-ChildItem -Path "C:\Windows" | Sort-Object -Descending Length


# 4.1.3. Même chose, mais montrer seulement les fichiers plus grands que 1 mégaoctet.
Get-ChildItem -Path "C:\Windows" | Sort-Object -Descending Length | ? Length -gt 1MB


# 4.1.4. Même chose, mais montrer seulement les fichiers qui pèsent entre 1 et 10 mégaoctets.
Get-ChildItem -Path "C:\Windows" | Sort-Object -Descending Length | ? {($_.Length -ge 1MB) -and ($_.Length -le 10MB)}


# 4.1.5. Même chose, mais montrer seulement les fichiers qui pèsent soit plus de 1 mégaoctet 
#        ou moins de 1 kilooctet.
Get-ChildItem -Path "C:\Windows" | Sort-Object -Descending Length | ? {($_.Length -ge 1MB) -or ($_.Length -le 1KB)}
