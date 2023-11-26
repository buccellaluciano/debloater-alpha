
. "$PSScriptRoot\launch.ps1"

function crearLabelClickable {
    param (
        [System.Windows.Forms.Control]$MiControl,
        [int]$X,
        [int]$Y,
        [string]$Texto
    )
    $nuevalabel = Add-Label -control $MiControl -Text $Texto -X $X -Y $Y -ForeColor '#FFFF66'
    $nuevalabel.Cursor = [Windows.Forms.Cursors]::Hand
    #return $nuevalabel
}

#Esto es para que se ajusten la posicion de los paneles a cuanton miden. SOLO LLAMAR AL FINAL.
function ajustarPosicionPaneles{
    param(
        [System.Windows.Forms.Panel[]]$Paneles,
        [Int]$PanelesXColumna = 2
    )
    
    #Estos valores se iran actualizando
    $posXahora = $xpos_array[0]     #Posiciones actualizadas
    $posYahora = $ypos_array[0]     #para los paneles

    #Esto va a buscar el panel mas ancho para la medicion en el movimiento de columna.
    $panelMasAncho = $Paneles[0]
    foreach ($panel in $Paneles) {
        if ($panel.Width -gt $panelMasAncho.Width){$panelMasAncho = $panel}
    }
    
    $indiceVer = 0                  #Indice de los paneles en verticalidad.
    $panelAnterior = $Paneles[0]

    #Posicionamiento automaticos por medio de evaluacion.
    foreach ($panel in $Paneles) {

        #Primero viene la definicion de la altura y luego la horizontal.
        #Esto toma la definicion de tamaño del panel anterior a este.
        $posYahora += (($panelAnterior.Height + $ysep) * ($indiceVer -gt 0))
        
        #Si el indice vertical ya llego al limite de paneles por columna, nos movemos
        #a la siguiente columna.
        if ($indiceVer -ge $PanelesXColumna)
        {
            $posXahora += $panelMasAncho.Width + $xsep #Siempre se toma el panel mas ancho.
            $indiceVer = 0
            $posYahora = $ypos_array[0]
        }
        $indiceVer++

        #Esto termina de establecer la posicion
        $panel.Location = New-Object System.Drawing.Size($posXahora, $posYahora)
        $panelAnterior = $panel
    }
}


####RODRIGO Y JULIAN: TIENEN QUE HACER FUNCIONES DE LOS BOTONES.###########
Add-Label -control $tab2Install -Text "Instalacion de software" -X 0 -Y 10 -Width ($formPrincipal.Width-50) -Height 50 -ForeColor '#f54242' -Size 30
Add-Label -control $tab2Install -Text "DEVTEST" -X 0 -Y 70 -Width ($formPrincipal.Width-50) -Height 30 -ForeColor '#ffffff' -Size 20


############TAB 2############
#VARIABLES PARA LOS PANELES DE SANDES, TOCAR SI ES NECESARIO

#Distancia entre los paneles.
#MODIFICAR SI SE NECESITA MAS ESPACIO!
$xsep = 10 #Separacion horizontal de los paneles.
$ysep = 10 #Separacion vertical de los paneles.


# Crear los paneles
#Los hice autosized para que no anden ocupando espacio al pedo, se van estirando conforme agregas controles.
#La posicion va a ser automaticamente establecida, asi que no se molesten en modificar argumentos aca.
$panelNavegadores = Add-Panel-Autosized -Control $tab2Install -X 0 -Y 0
$panelGpuCpuDrivers = Add-Panel-Autosized -Control $tab2Install -X 0 -Y 0
$panelCompresor = Add-Panel-Autosized -Control $tab2Install -X 0 -Y 0
$panelPlaceholder2 = Add-Panel-Autosized -Control $tab2Install -X 0 -Y 0
$panelPlaceholder3 = Add-Panel-Autosized -Control $tab2Install -X 0 -Y 0
$panelPlaceholder4 = Add-Panel-Autosized -Control $tab2Install -X 0 -Y 0


#CONTROLES
#Posiciones para los controles
$posiciones_control = 5
$cx_ar = New-Object int[] $posiciones_control
$cy_ar = New-Object int[] $posiciones_control

#Definicion automatica para las posiciones de los controles. Soporta hasta 5 posiciones.
for ($i = 0; $i -lt $posiciones_control; $i++) {
    $cx_ar[$i] = 40
    $cy_ar[$i] = 40 + ($i * 30) #El 30 es el espacio entre controles, aumentar o reducir si es necesario.
}

#Elementos de paneles de navegadores
$labelNav = Add-Label -control $panelNavegadores -Text "Navegadores" -X 0 -Y 5 -Width $panel_width -Height 25 -ForeColor '#8E44AD' -Size 15
crearLabelClickable -MiControl $panelNavegadores -Texto "Chrome" -X $cx_ar[0] -Y $cy_ar[0]
crearLabelClickable -MiControl $panelNavegadores -Texto "Brave" -X $cx_ar[1] -Y $cy_ar[1]
crearLabelClickable -MiControl $panelNavegadores -Texto "Firefox" -X $cx_ar[2] -Y $cy_ar[2]
crearLabelClickable -MiControl $panelNavegadores -Texto "Opera" -X $cx_ar[3] -Y $cy_ar[3]
crearLabelClickable -MiControl $panelNavegadores -Texto "Opera GX" -X $cx_ar[4] -Y $cy_ar[4]

#Elementos de paneles para los drivers
$labelGPU = Add-Label -control $panelGpuCpuDrivers -Text "Driver de CPU/GPU" -X 0 -Y 5 -Width $panel_width -Height 25 -ForeColor '#8E44AD' -Size 15
crearLabelClickable -MiControl $panelGpuCpuDrivers -Texto "Controlador AMD Ryzen Chipset" -X $cx_ar[0] -Y $cy_ar[0]
crearLabelClickable -MiControl $panelGpuCpuDrivers -Texto "Nvidia Drivers" -X $cx_ar[1] -Y $cy_ar[1]

#Elementos de paneles para el panel de compresor de archivos.
$labelGPU = Add-Label -control $panelCompresor -Text "Compresores" -X 0 -Y 5 -Width $panel_width -Height 25 -ForeColor '#8E44AD' -Size 15
crearLabelClickable -MiControl $panelCompresor -Texto "Winrar (Version de Prueba)" -X $cx_ar[0] -Y $cy_ar[0]
crearLabelClickable -MiControl $panelCompresor -Texto "7-Zip" -X $cx_ar[1] -Y $cy_ar[1]


$button2 = Add-Button -Control $tab2Install -Text "Button 2" -X 100 -Y 500 -Width 200 -Height 100 -ForeColor '#FFFFFF'
$tweaksTitle = Add-Label -control $tabPage1 -Text "DEBUG TEST" -X 5 -Y 100 -Width 457 -Height 142


ajustarPosicionPaneles -Paneles $panelNavegadores, $panelGpuCpuDrivers, $panelCompresor, $panelPlaceholder2, $panelPlaceholder3, $panelPlaceholder4

#####POR LAS DUDAS#######
#$chBoxDiscord DISCORD
#chBoxUbiConnect UBISOFT CONNECT