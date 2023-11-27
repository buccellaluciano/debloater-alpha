
############TAB 1############
$titlePrincipal = Add-Label -control $tabPage1 -Text "Modificaciones del sistema" -X 0 -Y 10 -Width ($formPrincipal.Width-50) -Height 50 -ForeColor '#f54242' -Size 30
Add-Label -control $tabPage1 -Text "Soto-Buccella-Gorno-Sandes" -X 0 -Y 70 -Width ($formPrincipal.Width-50) -Height 30 -ForeColor '#ffffff' -Size 20
############TITULOS###########

$panelDarkMode = Add-Panel-Autosized -Control $tabPage1 -X 0 -Y 0
$panelHistorialActividad = Add-Panel-Autosized -Control $tabPage1 -X 0 -Y 0
$panelDarkMode = Add-Panel-Autosized -Control $tabPage1 -X 0 -Y 0
$panelDarkMode = Add-Panel-Autosized -Control $tabPage1 -X 0 -Y 0
$paneltb = Add-Panel-Autosized -Control $tabPage1 -X 0 -Y 0


#$panelTweaks = Add-Panel -Control $tabPage1 -X 10 -Y 300 -Width 300 -Height 400


#CONTROLES
#Posiciones para los controles
$posiciones_control = 20
$cx_ar = New-Object int[] $posiciones_control
$cy_ar = New-Object int[] $posiciones_control

#Definicion automatica para las posiciones de los controles. Soporta hasta 5 posiciones.
for ($i = 0; $i -lt $posiciones_control; $i++) {
    $cx_ar[$i] = 40
    $cy_ar[$i] = 40 + ($i * 30) #El 30 es el espacio entre controles, aumentar o reducir si es necesario.
}

#Modo oscuro
Add-Label -control $panelDarkMode -Text "Modo oscuro" -X 0 -Y 5 -Width $panel_width -Height 25 -ForeColor '#8E44AD' -Size 15;
$btnchangetheme = Add-Button -Control $panelDarkMode -Text "Habilitar/Deshabilitar" -X $cx_ar[0] -Y $cy_ar[0] -Width 100 -Height 30 -ForeColor '#ffffff';
$btnchangetheme.Add_Click({$global:text="change_theme1.txt"; changeregs; $global:text="change_theme2.txt"; changeregs})

#Barra de tareas
Add-Label -control $paneltb -Text "Barra de tareas" -X 0 -Y 5 -Width $panel_width -Height 25 -ForeColor '#8E44AD' -Size 15;
$btnchattb = Add-Button -Control $paneltb -Text "Chat" -X $cx_ar[0] -Y $cy_ar[0] -Width 100 -Height 30 -ForeColor '#ffffff'
$btnchattb.Add_Click({$global:text="disable_chat_taskbar.txt"; Changeregs})



############TAB 1############



ajustarPosicionPaneles -Paneles $panelDarkMode, $paneltb


$titlePrincipal.Add_Click({
    Set-Wallpaper -Image "$PSScriptRoot\src\img\paparrando.png" -Style Tile
})