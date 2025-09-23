Param(
    [Parameter(Mandatory)][string] $Nom,              # Nom de l'automobiliste
    [Parameter(Mandatory)][string] $Prenom,           # Prénom de l'automobiliste
    [ValidateScript({$_ -match "^[a-z]\d\d\d\d`-\d\d\d\d\d\d`-\d\d"})][string] $NoPermis,         # Numéro de permis (X9999-999999-99)
    [ValidateSet("Voiture", "Camion", "Moto", "Autobus", "Autre")][string] $TypeVehicule,     # Le type de véhicule (Voiture, Camion, Moto, Autobus, Autre)
    [ValidateLength(2,7)][string] $Immatriculation,  # Le numéro de plaque d'immatriculation
    [switch] $Confiscation,      # Spécifie si le véhicule doit être confisqué
    [string] $Infraction,        # Le détail de l'infraction
    [ValidateRange(0,30)][int]    $Points           # Le nombre de points d'inaptitude à ajouter au dossier
)


[PSCustomObject]@{
    Nom = $Nom
    Prenom = $Prenom
    NoPermis = $NoPermis
    TypeVehicule = $TypeVehicule
    Immatriculation = $Immatriculation
    Confiscation = $Confiscation
    Infraction = $Infraction
    Points = $Points
}