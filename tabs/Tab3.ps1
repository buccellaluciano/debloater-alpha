############TAB 1############
$titlePrincipal = Add-Label -control $tabPage3 -Text "Debloat" -X 0 -Y 10 -Width ($formPrincipal.Width-50) -Height 50 -ForeColor '#f54242' -Size 30
Add-Label -control $tabPage3 -Text "Ojo, aca se pueden desinstalar la mayoria de aplicaciones que vienen con el sistema, utilicelo con conciencia."  -X 0 -Y 70 -Width ($formPrincipal.Width-50) -Height 30 -ForeColor '#ffffff' -Size 10
############TITULOS###########


$paneldebloat = Add-Panel-Autosized -Control $tabPage3 -X 0 -Y 0
$panelSearch = Add-Panel-Autosized -Control $tabPage3 -X 0 -Y 0
$panelsuggest = Add-Panel-Autosized -Control $tabPage3 -X 0 -Y 0
$panelDarkMode = Add-Panel-Autosized -Control $tabPage3 -X 0 -Y 0


#$panelTweaks = Add-Panel -Control $tabPage1 -X 10 -Y 300 -Width 300 -Height 400


#CONTROLES
#Posiciones para los controles
$posiciones_control = 20
$cx_ar = New-Object int[] $posiciones_control
$cy_ar = New-Object int[] $posiciones_control

#Definicion automatica para las posiciones de los controles. Soporta hasta 5 posiciones.
for ($i = 0; $i -lt $posiciones_control; $i++) {
    $cx_ar[$i] = 40
    $cy_ar[$i] = 40 + ($i * 40) #El 30 es el espacio entre controles, aumentar o reducir si es necesario.
}

############TAB 3############
$buttondeb = Add-Button -Control $paneldebloat -Text "Debloat" -X 10 -Y 10 -Width 100 -Height 20 -ForeColor '#FFFFFF'
$buttondeb.Add_Click({Confirm-Action -YesAction {$global:removebloatware=0; upackages}})

############TAB 3############

$btnTESTa = Add-ImageButton -Control $tabPage3 -ImagePath $global:imagenTroll -X 50 -Y 50 -Width 300 -Height 200


ajustarPosicionPaneles -Paneles $paneldebloat

#$btnTESTa = Add-ImageButton -Control $tabPage3 -ImagePath "M:\Organizate\Desktop\debloater-alpha\src\img\debloaterIcon.jpg" -X 50 -Y 50 -Width 300 -Height 200
