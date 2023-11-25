
############TAB 1############
$titlePrincipal = Add-Label -control $tabPage1 -Text "Modificaciones del sistema" -X 0 -Y 10 -Width ($formPrincipal.Width-50) -Height 50 -ForeColor '#f54242' -Size 30
Add-Label -control $tabPage1 -Text "Soto-Buccella-Gorno-Sandes" -X 0 -Y 70 -Width ($formPrincipal.Width-50) -Height 30 -ForeColor '#ffffff' -Size 20
############TITULOS###########


$panelTweaks = Add-Panel -Control $tabPage1 -X 10 -Y 300 -Width 300 -Height 400
$butUninstalWindows = Add-Button -Control $panelTweaks -Text "ButtonTest" -X 100 -Y 500 -Width 200 -Height 100



##PANEL 1##
##PANEL 2##
$tweaksTitle = Add-Label -control $panel2 -Text "DEBUG TEST" -X 80 -Y 5 -Width 300 -Height 400
$butUninstalWindows = Add-Button -Control $panel2 -Text "ButtonTest" -X 100 -Y 500 -Width 200 -Height 100
$checkBox1 = Add-CheckBox -Control $panel1 -Text "Opción 1" -X 10 -Y 10
##PANEL 2##




############TAB 1############

$titlePrincipal.Add_Click({
    Set-Wallpaper -Image "$PSScriptRoot\src\img\paparrando.png" -Style Fit
})