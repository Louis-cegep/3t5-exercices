param(
    [int[]] $Nombres
)
$Total = 1

foreach( $nombre in $Nombres) {
    $Total = ($Total * $nombre)
}


$Total