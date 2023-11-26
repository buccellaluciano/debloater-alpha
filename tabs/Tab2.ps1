
. "$PSScriptRoot\launch.ps1"
####RODRIGO Y JULIAN: TIENEN QUE HACER FUNCIONES DE LOS BOTONES.###########
Add-Label -control $tab2Install -Text "Instalacion de software" -X 0 -Y 10 -Width ($formPrincipal.Width-50) -Height 50 -ForeColor '#f54242' -Size 30
Add-Label -control $tab2Install -Text "DEVTEST" -X 0 -Y 70 -Width ($formPrincipal.Width-50) -Height 30 -ForeColor '#ffffff' -Size 20



############TAB 2############
#VARIABLES PARA LOS PANELES DE SANDES, TOCAR SI ES NECESARIO
$panel_width = 300
$panel_height = 200
$xp = 10        #Posiciones iniciales
$yp = 130       #de los paneles.

#Distancia de separador de los paneles.
$xsep = 20
$ysep = 10

#Array de posiciones
$panelesTot = 6
$xpos_array = New-Object int[] $panelesTot
$ypos_array = New-Object int[] $panelesTot

#Definicion automatica de las posiciones.
for ($i = 0; $i -lt $panelesTot; $i++) 
{
    #Primero viene la definicion de la altura y luego la horizontal.
    $ypos_array[$i] = $yp + (($panel_height + $ysep) * ($i % 2))
    
    if ($i -lt 1){$xpos_array[$i] = $xp}
    else{
        $xpos_array[$i] = $xp
        if ($i % 2){$xp += ($panel_width + $xsep)}
    }
}

# Crear los paneles
$panelNavegadores = Add-Panel -Control $tab2Install -X ($xpos_array[0]) -Y ($ypos_array[0]) -Width $panel_width -Height $panel_height
$panelGpuCpuDrivers = Add-Panel -Control $tab2Install -X ($xpos_array[1]) -Y ($ypos_array[1]) -Width $panel_width -Height $panel_height
$panelPlaceholder1 = Add-Panel -Control $tab2Install -X ($xpos_array[2]) -Y ($ypos_array[2]) -Width $panel_width -Height $panel_height
$panelPlaceholder2 = Add-Panel -Control $tab2Install -X ($xpos_array[3]) -Y ($ypos_array[3]) -Width $panel_width -Height $panel_height
$panelPlaceholder3 = Add-Panel -Control $tab2Install -X ($xpos_array[4]) -Y ($ypos_array[4]) -Width $panel_width -Height $panel_height
$panelPlaceholder4 = Add-Panel -Control $tab2Install -X ($xpos_array[5]) -Y ($ypos_array[5]) -Width $panel_width -Height $panel_height


#CONTROLES
#Posiciones para los controles
$posiciones_control = 5
$cx_ar = New-Object int[] $posiciones_control
$cy_ar = New-Object int[] $posiciones_control

#Definicion automatica para las posiciones de los controles. Soporta hasta 5 posiciones.
for ($i = 0; $i -lt $posiciones_control; $i++) {
    $cx_ar[$i] = 10
    $cy_ar[$i] = 40 + ($i * 30)
}

#Elementos de paneles de navegadores
$labelNav = Add-Label -control $panelNavegadores -Text "Navegadores" -X 0 -Y 5 -Width $panel_width -Height 25 -ForeColor '#8E44AD' -Size 15
$chBoxChrome = Add-CheckBox -Control $panelNavegadores -Text "Chrome" -X $cx_ar[0] -Y $cy_ar[0] -ForeColor '#FFFFFF' 
$chBoxBrave = Add-CheckBox -Control $panelNavegadores -Text "Brave" -X $cx_ar[1] -Y $cy_ar[1] -ForeColor '#FFFFFF' 
$chBoxFirefox = Add-CheckBox -Control $panelNavegadores -Text "Firefox" -X $cx_ar[2] -Y $cy_ar[2] -ForeColor '#FFFFFF' 
$chBoxOpera = Add-CheckBox -Control $panelNavegadores -Text "Opera" -X $cx_ar[3] -Y $cy_ar[3] -ForeColor '#FFFFFF'
$chBoxOperagx = Add-CheckBox -Control $panelNavegadores -Text "Opera GX" -X $cx_ar[4] -Y $cy_ar[4] -ForeColor '#FFFFFF'


#Elementos de paneles para los drivers
$labelGPU = Add-Label -control $panelGpuCpuDrivers -Text "Driver de CPU/GPU" -X 0 -Y 5 -Width $panel_width -Height 25 -ForeColor '#8E44AD' -Size 15
$chBoxAMDChipset = Add-CheckBox -Control $panelGpuCpuDrivers -Text "Controlador AMD Ryzen Chipset" -X $cx_ar[0] -Y $cy_ar[0] -ForeColor '#FFFFFF' 
$chBoxNvidiaDrivers = Add-CheckBox -Control $panelGpuCpuDrivers -Text "Nvidia Drivers" -X $cx_ar[1] -Y $cy_ar[1] -ForeColor '#FFFFFF' 
$checkBox2_3 = Add-CheckBox -Control $panelGpuCpuDrivers -Text "TEST 1" -X $cx_ar[2] -Y $cy_ar[2] -ForeColor '#FFFFFF' 
$checkBox2_4 = Add-CheckBox -Control $panelGpuCpuDrivers -Text "TEST 2" -X $cx_ar[3] -Y $cy_ar[3] -ForeColor '#FFFFFF'
$checkBox2_5 = Add-CheckBox -Control $panelGpuCpuDrivers -Text "TEST 3" -X $cx_ar[4] -Y $cy_ar[4] -ForeColor '#FFFFFF'

#FUNCION TEMPORAL! Sacar cuando ya no sirva.
function crearControlesPlaceholder {
    param ([System.Windows.Forms.Panel]$PanelA)

    Add-Label -control $PanelA -Text "TITULO" -X 0 -Y 5 -Width $panel_width -Height 25 -ForeColor '#8E44AD' -Size 15
    Add-CheckBox -Control $PanelA -Text "CONTROL 1" -X $cx_ar[0] -Y $cy_ar[0] -ForeColor '#FFFFFF' 
    Add-CheckBox -Control $PanelA -Text "CONTROL 2" -X $cx_ar[1] -Y $cy_ar[1] -ForeColor '#FFFFFF' 
    Add-CheckBox -Control $PanelA -Text "CONTROL 3" -X $cx_ar[2] -Y $cy_ar[2] -ForeColor '#FFFFFF' 
    Add-CheckBox -Control $PanelA -Text "CONTROL 4" -X $cx_ar[3] -Y $cy_ar[3] -ForeColor '#FFFFFF'
    Add-CheckBox -Control $PanelA -Text "CONTROL 5" -X $cx_ar[4] -Y $cy_ar[4] -ForeColor '#FFFFFF'
}

#Creador de controles placeholder
crearControlesPlaceholder -PanelA $panelPlaceholder1
crearControlesPlaceholder -PanelA $panelPlaceholder2
crearControlesPlaceholder -PanelA $panelPlaceholder3
crearControlesPlaceholder -PanelA $panelPlaceholder4


$button2 = Add-Button -Control $tab2Install -Text "Button 2" -X 100 -Y 500 -Width 200 -Height 100 -ForeColor '#FFFFFF'
$tweaksTitle = Add-Label -control $tabPage1 -Text "DEBUG TEST" -X 5 -Y 100 -Width 457 -Height 142


#####POR LAS DUDAS#######
#$chBoxDiscord DISCORD
#chBoxUbiConnect UBISOFT CONNECT