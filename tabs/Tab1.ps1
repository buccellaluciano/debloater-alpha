
############TAB 1############
$titlePrincipal = Add-Label -control $tabPage1 -Text "Modificaciones del sistema" -X 0 -Y 10 -Width ($formPrincipal.Width-50) -Height 50 -ForeColor '#f54242' -Size 30
Add-Label -control $tabPage1 -Text "Soto-Buccella-Gorno-Sandes" -X 0 -Y 70 -Width ($formPrincipal.Width-50) -Height 30 -ForeColor '#ffffff' -Size 20
############TITULOS###########

$panelDarkMode = Add-Panel-Autosized -Control $tabPage1 -X 0 -Y 0
#$panelTweaks = Add-Panel -Control $tabPage1 -X 10 -Y 300 -Width 300 -Height 400

Add-Label -control $panelNavegadores -Text "Navegadores" -X 0 -Y 5 -Width $panel_width -Height 25 -ForeColor '#8E44AD' -Size 15;
$buttonDarkModeON = Add-Button -Control $panelDarkMode -Text "Habilitar" -X $cx_ar[0] -Y $cy_ar[0] -Width 150 -Height 30 -ForeColor '#ffffff'
$buttonDarkModeOFF = Add-Button -Control $panelDarkMode -Text "Deshabilitar" -X $cx_ar[1] -Y $cy_ar[1] -Width 150 -Height 30 -ForeColor '#ffffff'


############TAB 1############



ajustarPosicionPaneles -Paneles $panelDarkMode


$titlePrincipal.Add_Click({
    Set-Wallpaper -Image "$PSScriptRoot\src\img\paparrando.png" -Style Fit
})