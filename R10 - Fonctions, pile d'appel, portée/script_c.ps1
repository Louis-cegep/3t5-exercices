# Script: script_c.ps1
$v = -4
function F {
    Write-Host $v
    $global:v = 42
}
$v = 5
F
Write-Host $v