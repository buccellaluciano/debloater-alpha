#Esto es para que se ajusten la posicion de los paneles a cuanton miden. SOLO LLAMAR AL FINAL.
####RODRIGO Y JULIAN: TIENEN QUE HACER FUNCIONES DE LOS BOTONES.###########
$tituloTab2 = Add-Label -control $tab2Install -Text "Instalacion de software" -X 0 -Y 10 -Width ($formPrincipal.Width-50) -Height 50 -ForeColor '#f54242' -Size 30
Add-Label -control $tab2Install -Text "DEVTEST" -X 0 -Y 70 -Width ($formPrincipal.Width-50) -Height 30 -ForeColor '#ffffff' -Size 20

$installUnin = $true
$buttonInstalUnin = Add-Button -Control $tab2Install -Text "Button 2" -X 10 -Y 100 -Width 225 -Height 30 -ForeColor '#eeeeee'
Update-Button-Status -button $buttonInstalUnin -variableObserved $installUnin

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
$panelGaming = Add-Panel-Autosized -Control $tab2Install -X 0 -Y 0
$panelPlaceholder3 = Add-Panel-Autosized -Control $tab2Install -X 0 -Y 0
$panelPlaceholder4 = Add-Panel-Autosized -Control $tab2Install -X 0 -Y 0
$panelplaceholder5 = Add-Panel-Autosized -control $tab2Install -X 0 -Y 0
$panelplaceholder6 = Add-Panel-Autosized -control $tab2Install -X 0 -Y 0


#CONTROLES
#Posiciones para los controles
$posiciones_control = 10
$cx_ar = New-Object int[] $posiciones_control
$cy_ar = New-Object int[] $posiciones_control

#Definicion automatica para las posiciones de los controles. Soporta hasta 5 posiciones.
for ($i = 0; $i -lt $posiciones_control; $i++) {
    $cx_ar[$i] = 40
    $cy_ar[$i] = 40 + ($i * 30) #El 30 es el espacio entre controles, aumentar o reducir si es necesario.
}
#Elementos de paneles de navegadores
$botonesnav =@(
Add-Label -control $panelNavegadores -Text "Navegadores" -X 0 -Y 5 -Width $panel_width -Height 25 -ForeColor '#8E44AD' -Size 15;
Add-Label-Clickeable -MiControl $panelNavegadores -Texto "Chrome" -X $cx_ar[0] -Y $cy_ar[0]; $buttonchrome = Add-Button -Control $panelNavegadores -Text " " -X ($cx_ar[0] -35) -Y ($cy_ar[0]) -Width 30 -Height 20 -ForeColor '#FFFFFF'; $buttonchrome.Add_Click({$global:app="Google.Chrome"; ipackages}); 
Add-Label-Clickeable -MiControl $panelNavegadores -Texto "Brave" -X $cx_ar[1] -Y $cy_ar[1]; $buttonbrave = Add-Button -Control $panelNavegadores -Text " " -X ($cx_ar[1] -35) -Y ($cy_ar[1]) -Width 30 -Height 20 -ForeColor '#FFFFFF'; $buttonbrave.Add_Click({$global:app="XP8C9QZMS2PC1T"; ipackages}); 
Add-Label-Clickeable -MiControl $panelNavegadores -Texto "Firefox" -X $cx_ar[2] -Y $cy_ar[2]; $buttonfirefox = Add-Button -Control $panelNavegadores -Text " " -X ($cx_ar[2] -35) -Y ($cy_ar[2]) -Width 30 -Height 20 -ForeColor '#FFFFFF'; $buttonfirefox.Add_Click({$global:app="9NZVDKPMR9RD"; ipackages}); 
Add-Label-Clickeable -MiControl $panelNavegadores -Texto "Opera" -X $cx_ar[3] -Y $cy_ar[3]; $buttonopera = Add-Button -Control $panelNavegadores -Text " " -X ($cx_ar[3] -35) -Y ($cy_ar[3]) -Width 30 -Height 20 -ForeColor '#FFFFFF'; $buttonopera.Add_Click({$global:app="Opera.Opera"; ipackages}); 
Add-Label-Clickeable -MiControl $panelNavegadores -Texto "Opera GX" -X $cx_ar[4] -Y $cy_ar[4]; $buttonoperagx = Add-Button -Control $panelNavegadores -Text " " -X ($cx_ar[4] -35) -Y ($cy_ar[4]) -Width 30 -Height 20 -ForeColor '#FFFFFF'; $buttonoperagx.Add_Click({$global:app="Opera.OperaGX"; ipackages}); 
)
#Elementos de paneles para los drivers
$labelGPU = Add-Label -control $panelGpuCpuDrivers -Text "Driver de CPU/GPU" -X 0 -Y 5 -Width $panel_width -Height 25 -ForeColor '#8E44AD' -Size 15
Add-Label-Clickeable -MiControl $panelGpuCpuDrivers -Texto "Controlador AMD Ryzen Chipset" -X $cx_ar[0] -Y $cy_ar[0]
Add-Label-Clickeable -MiControl $panelGpuCpuDrivers -Texto "Nvidia Drivers" -X $cx_ar[1] -Y $cy_ar[1]

#Elementos de paneles para el panel de compresor de archivos.
$labelGPU = Add-Label -control $panelCompresor -Text "Compresores" -X 0 -Y 5 -Width $panel_width -Height 25 -ForeColor '#8E44AD' -Size 15
Add-Label-Clickeable -MiControl $panelCompresor -Texto "Winrar (Version de Prueba)" -X $cx_ar[0] -Y $cy_ar[0]
Add-Label-Clickeable -MiControl $panelCompresor -Texto "7-Zip" -X $cx_ar[1] -Y $cy_ar[1]

#Elemento de paneles para gaming
$labelGaming = Add-Label -control $panelGaming -Text "Gaming" -X 0 -Y 5 -Width $panel_width -Height 25 -ForeColor '#8E44AD' -Size 15
Add-Label-Clickeable -MiControl $panelGaming -Texto "GOG Galaxy " -X $cx_ar[0] -Y $cy_ar[0]; $buttongog = Add-Button -Control $panelGaming -Text " " -X ($cx_ar[0] -35) -Y ($cy_ar[0]) -Width 30 -Height 20 -ForeColor '#FFFFFF'; $buttongog.Add_Click({$global:app="GOG.Galaxy"; ipackages}) 
Add-Label-Clickeable -MiControl $panelGaming -Texto "Epic games Launcher" -X $cx_ar[1] -Y $cy_ar[1]; $buttonepic = Add-Button -Control $panelGaming -Text " " -X ($cx_ar[1] -35) -Y ($cy_ar[1]) -Width 30 -Height 20 -ForeColor '#FFFFFF'; $buttonepic.Add_Click({$global:app="EpicGames.EpicGamesLauncher"; ipackages}) 
Add-Label-Clickeable -MiControl $panelGaming -Texto "Steam " -X $cx_ar[2] -Y $cy_ar[2]; $buttonsteam = Add-Button -Control $panelGaming -Text " " -X ($cx_ar[2] -35) -Y ($cy_ar[2]) -Width 30 -Height 20 -ForeColor '#FFFFFF'; $buttonsteam.Add_Click({$global:app="Valve.Steam"; ipackages}) 
Add-Label-Clickeable -MiControl $panelGaming -Texto "Ubisofft Connct" -X $cx_ar[3] -Y $cy_ar[3];$buttonubisoft = Add-Button -Control $panelGaming -Text " " -X ($cx_ar[3] -35) -Y ($cy_ar[3]) -Width 30 -Height 20 -ForeColor '#FFFFFF'; $buttonubisoft.Add_Click({$global:app="Ubisoft.Connect"; ipackages}) 
Add-Label-Clickeable -MiControl $panelGaming -Texto "Ea Desktop" -X $cx_ar[4] -Y $cy_ar[4];$buttoneadesk = Add-Button -Control $panelGaming -Text " " -X ($cx_ar[4] -35) -Y ($cy_ar[4]) -Width 30 -Height 20 -ForeColor '#FFFFFF'; $buttoneadesk.Add_Click({$global:app="ElectronicArts.EADesktop"; ipackages}) 

#Elemento de striming services
$labelGPU = Add-Label -control $panelPlaceholder3 -Text "Streaming Services" -X 0 -Y 5 -Width $panel_width -Height 25 -ForeColor '#8E44AD' -Size 15
Add-Label-Clickeable -MiControl $panelPlaceholder3 -Texto "Amazon Prime Video " -X $cx_ar[0] -Y $cy_ar[0]
Add-Label-Clickeable -MiControl $panelPlaceholder3 -Texto "Disney+" -X $cx_ar[1] -Y $cy_ar[1]
Add-Label-Clickeable -MiControl $panelPlaceholder3 -Texto "Netflix " -X $cx_ar[2] -Y $cy_ar[2]
Add-Label-Clickeable -MiControl $panelPlaceholder3 -Texto "Spotify" -X $cx_ar[3] -Y $cy_ar[3]

#Elemento de striming services
$labelGPU = Add-Label -control $panelPlaceholder4 -Text "Communication" -X 0 -Y 5 -Width $panel_width -Height 25 -ForeColor '#8E44AD' -Size 15
Add-Label-Clickeable -MiControl $panelPlaceholder4 -Texto "Discord " -X $cx_ar[0] -Y $cy_ar[0]
Add-Label-Clickeable -MiControl $panelPlaceholder4 -Texto "Microsoft Teams" -X $cx_ar[1] -Y $cy_ar[1]
Add-Label-Clickeable -MiControl $panelPlaceholder4 -Texto "Rocket chat " -X $cx_ar[2] -Y $cy_ar[2]
Add-Label-Clickeable -MiControl $panelPlaceholder4 -Texto "Signal" -X $cx_ar[3] -Y $cy_ar[3]
Add-Label-Clickeable -MiControl $panelPlaceholder4 -Texto "Skype" -X $cx_ar[4] -Y $cy_ar[4]
Add-Label-Clickeable -MiControl $panelPlaceholder4 -Texto "Stack" -X $cx_ar[5] -Y $cy_ar[5]
Add-Label-Clickeable -MiControl $panelPlaceholder4 -Texto "Telegram desktop" -X $cx_ar[6] -Y $cy_ar[6]
Add-Label-Clickeable -MiControl $panelPlaceholder4 -Texto "WhatsApp Desktop" -X $cx_ar[7] -Y $cy_ar[7]
Add-Label-Clickeable -MiControl $panelPlaceholder4 -Texto "Zoom" -X $cx_ar[8] -Y $cy_ar[8]

#Elemento de image tools 
$labelGPU = Add-Label -control $panelPlaceholder5 -Text "Image Tools" -X 0 -Y 5 -Width $panel_width -Height 25 -ForeColor '#8E44AD' -Size 15
Add-Label-Clickeable -MiControl $panelPlaceholder5 -Texto "GIMP " -X $cx_ar[0] -Y $cy_ar[0]
Add-Label-Clickeable -MiControl $panelPlaceholder5 -Texto "Inkscape" -X $cx_ar[1] -Y $cy_ar[1]
Add-Label-Clickeable -MiControl $panelPlaceholder5 -Texto "Iranview " -X $cx_ar[2] -Y $cy_ar[2]
Add-Label-Clickeable -MiControl $panelPlaceholder5 -Texto "Krita" -X $cx_ar[3] -Y $cy_ar[3]
Add-Label-Clickeable -MiControl $panelPlaceholder5 -Texto "Paint.NET" -X $cx_ar[4] -Y $cy_ar[4]
Add-Label-Clickeable -MiControl $panelPlaceholder5 -Texto "ShareX(Screenshots/Gifs)" -X $cx_ar[5] -Y $cy_ar[5]

#Elemento de Text Editors/IDEs
$labelGPU = Add-Label -control $panelPlaceholder6 -Text "Text Editors/IDEs" -X 0 -Y 5 -Width $panel_width -Height 25 -ForeColor '#8E44AD' -Size 15
Add-Label-Clickeable -MiControl $panelPlaceholder6 -Texto "Notepad++ " -X $cx_ar[0] -Y $cy_ar[0]
Add-Label-Clickeable -MiControl $panelPlaceholder6 -Texto "Jerbrains toolbox" -X $cx_ar[1] -Y $cy_ar[1]
Add-Label-Clickeable -MiControl $panelPlaceholder6 -Texto "VS code" -X $cx_ar[2] -Y $cy_ar[2]
Add-Label-Clickeable -MiControl $panelPlaceholder6 -Texto "VS coium" -X $cx_ar[3] -Y $cy_ar[3]
Add-Label-Clickeable -MiControl $panelPlaceholder6 -Texto "Visual Estudio 2022 Community" -X $cx_ar[4] -Y $cy_ar[4]
Add-Label-Clickeable -MiControl $panelPlaceholder6 -Texto "Jetbrains Toolbox" -X $cx_ar[5] -Y $cy_ar[5]




ajustarPosicionPaneles -Paneles $panelNavegadores, $panelGpuCpuDrivers, $panelCompresor, $panelGaming, $panelPlaceholder3, $panelPlaceholder4 , $panelplaceholder5 , $panelplaceholder6

#####POR LAS DUDAS#######
#$chBoxDiscord DISCORD
#chBoxUbiConnect UBISOFT CONNECT