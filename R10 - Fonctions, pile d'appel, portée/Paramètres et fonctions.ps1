. 'C:\Users\6323681\Documents\GitHub\3t5-exercices\R10 - Fonctions, pile d''appel, portée\Invoke-Addition.ps1'
Invoke-Addition 2, 3, 5

function Start-Notepad {
    param (
         [ValidateScript({Test-Path -Path 'C:\Users\6323681\Documents\GitHub\3t5-exercices\$_'})][string]$Fichier
    )
    Start-Process notepad.exe -ArgumentList $Fichier
}
Start-Notepad test.txt
