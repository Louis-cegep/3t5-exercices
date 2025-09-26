# Script: script_b.ps1
function F {
    $script:v = 3
    Write-Host $v
}
$v = 5
F
Write-Host $v