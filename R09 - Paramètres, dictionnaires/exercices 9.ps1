& 'C:\Users\6323681\Documents\GitHub\3t5-exercices\R09 - Paramètres, dictionnaires\Multiplier.ps1' 3, 5, 2
$Personnages = @( [PsCustomObject]@{Nom = "Skywalker"; Prenom = "Luke"; Profession = "Jedi"}, 
[PsCustomObject]@{Nom = "Kenobi"; Prenom = "Obi Wan"; Profession = "Jedi"}, 
[PsCustomObject]@{Nom = "Yoda"; Prenom = "Minch"; Profession = "Jedi"})
$Personnages += @( [PSCustomObject]@{Nom = "Vader"; Prenom="Darth"; Profession="Sith"})

$Personnages | Where-Object -Property Profession -Match "Jedi"

& 'C:\Users\6323681\Documents\GitHub\3t5-exercices\R09 - Paramètres, dictionnaires\Personnages.ps1' -Nom "Solo" -Prenom "Han" -Profession "Contrebandier" | Format-List
$splat1 = @{
    Path = 'C:\Users\6323681\Documents\GitHub\3t5-exercices\R09 - Paramètres, dictionnaires\Personnages.ps1'
}
Start-Process @splat1

& 'C:\Users\6323681\Documents\GitHub\3t5-exercices\R09 - Paramètres, dictionnaires\Validation.ps1' "Joe" "Schmo" "M1234-123456-12" "Voiture" "J03 Bl0" $true 15