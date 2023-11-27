
############TAB 1############
$titlePrincipal = Add-Label -control $tabPage1 -Text "Modificaciones del sistema" -X 0 -Y 10 -Width ($formPrincipal.Width-50) -Height 50 -ForeColor '#f54242' -Size 30
Add-Label -control $tabPage1 -Text "Soto-Buccella-Gorno-Sandes" -X 0 -Y 70 -Width ($formPrincipal.Width-50) -Height 30 -ForeColor '#ffffff' -Size 20
############TITULOS###########

$panelDarkMode = Add-Panel -Control $tabPage1 -X 10 -Y 100 -Width 300 -Height 400

#$panelTweaks = Add-Panel -Control $tabPage1 -X 10 -Y 300 -Width 300 -Height 400


$buttonDarkModeON = Add-Button -Control $tabPage1 -Text "Habilitar" -X 10 -Y 10 -Width 150 -Height 30 -ForeColor '#ffffff'

############TAB 1############





$titlePrincipal.Add_Click({
    Set-Wallpaper -Image "$PSScriptRoot\src\img\paparrando.png" -Style Fit
})