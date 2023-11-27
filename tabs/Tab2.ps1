#Esto es para que se ajusten la posicion de los paneles a cuanton miden. SOLO LLAMAR AL FINAL.
####RODRIGO Y JULIAN: TIENEN QUE HACER FUNCIONES DE LOS BOTONES.###########
$tituloTab2 = Add-Label -control $tab2Install -Text "Instalacion de software" -X 0 -Y 10 -Width ($formPrincipal.Width-50) -Height 50 -ForeColor '#f54242' -Size 30
Add-Label -control $tab2Install -Text "DEVTEST" -X 0 -Y 70 -Width ($formPrincipal.Width-50) -Height 30 -ForeColor '#ffffff' -Size 20


$buttonInstalUnin = Add-Button -Control $tab2Install -Text "ACTUALIZAR TODO" -X ($formPrincipal.Width / 2 -225) -Y 100 -Width 225 -Height 30 -ForeColor '#00FF00'

$buttonInstalUnin.Add_Click{
    Confirm-Action -message "¿Estas seguro que quieres actualizar todo mediante winget? Algunas aplicaciones no se actualizaran." -action {
        winget upgrade --all --silent
    }
}

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
$panelComun = Add-Panel-Autosized -Control $tab2Install -X 0 -Y 0
$panelAV = Add-Panel-Autosized -control $tab2Install -X 0 -Y 0
$panelplaceholder6 = Add-Panel-Autosized -control $tab2Install -X 0 -Y 0
$panelEmuladores = Add-Panel-Autosized -control $tab2Install -X 0 -Y 0

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
$labelGPU = Add-Label -control $panelCompresor -Text "Programas de compresion" -X 0 -Y 5 -Width $panel_width -Height 25 -ForeColor '#8E44AD' -Size 15
Add-Label-Clickeable -MiControl $panelCompresor -Texto "Winrar (Version de Prueba)" -X $cx_ar[0] -Y $cy_ar[0]; $buttonwinr = Add-Button -Control $panelCompresor -Text " " -X ($cx_ar[0] -35) -Y ($cy_ar[0]) -Width 30 -Height 20 -ForeColor '#FFFFFF'; $buttonwinr.Add_Click({$global:app="RARLab.WinRAR"; ipackages}) 
Add-Label-Clickeable -MiControl $panelCompresor -Texto "7-Zip" -X $cx_ar[1] -Y $cy_ar[1]; $button7z = Add-Button -Control $panelCompresor -Text " " -X ($cx_ar[1] -35) -Y ($cy_ar[1]) -Width 30 -Height 20 -ForeColor '#FFFFFF'; $button7z.Add_Click({$global:app="7zip.7zip"; ipackages}) 

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
$labelComun = Add-Label -control $panelComun -Text "Comunicacion" -X 0 -Y 5 -Width $panel_width -Height 25 -ForeColor '#8E44AD' -Size 15
Add-Label-Clickeable -MiControl $panelComun -Texto "Discord " -X $cx_ar[0] -Y $cy_ar[0]; $buttondisc = Add-Button -Control $panelComun -Text " " -X ($cx_ar[0] -35) -Y ($cy_ar[0]) -Width 30 -Height 20 -ForeColor '#FFFFFF'; $buttondisc.Add_Click({$global:app="Discord.Discord"; ipackages}) 
Add-Label-Clickeable -MiControl $panelComun -Texto "Skype" -X $cx_ar[1] -Y $cy_ar[1]; $buttonsky = Add-Button -Control $panelComun -Text " " -X ($cx_ar[1] -35) -Y ($cy_ar[1]) -Width 30 -Height 20 -ForeColor '#FFFFFF'; $buttonsky.Add_Click({$global:app="9WZDNCRFJ364"; ipackages}) 
Add-Label-Clickeable -MiControl $panelComun -Texto "Slack" -X $cx_ar[2] -Y $cy_ar[2]; $buttonslack = Add-Button -Control $panelComun -Text " " -X ($cx_ar[2] -35) -Y ($cy_ar[2]) -Width 30 -Height 20 -ForeColor '#FFFFFF'; $buttonslack.Add_Click({$global:app="9WZDNCRDK3WP"; ipackages}) 
Add-Label-Clickeable -MiControl $panelComun -Texto "WhatsApp Desktop" -X $cx_ar[3] -Y $cy_ar[3]; $buttonwhats = Add-Button -Control $panelComun -Text " " -X ($cx_ar[3] -35) -Y ($cy_ar[3]) -Width 30 -Height 20 -ForeColor '#FFFFFF'; $buttonwhats.Add_Click({$global:app="WhatsApp.WhatsApp"; ipackages}) 

#Elemento de image tools 
$labelAV = Add-Label -control $panelAV -Text "Audio/Video" -X 0 -Y 5 -Width $panel_width -Height 25 -ForeColor '#8E44AD' -Size 15
Add-Label-Clickeable -MiControl $panelAV -Texto "VLC" -X $cx_ar[0] -Y $cy_ar[0]; $buttonvlc = Add-Button -Control $panelAV -Text " " -X ($cx_ar[0] -35) -Y ($cy_ar[0]) -Width 30 -Height 20 -ForeColor '#FFFFFF'; $buttonvlc.Add_Click({$global:app="XPDM1ZW6815MQM"; ipackages}) 
Add-Label-Clickeable -MiControl $panelAV -Texto "Spotify" -X $cx_ar[1] -Y $cy_ar[1]; $buttonspoti = Add-Button -Control $panelAV -Text " " -X ($cx_ar[1] -35) -Y ($cy_ar[1]) -Width 30 -Height 20 -ForeColor '#FFFFFF'; $buttonspoti.Add_Click({$global:app="Spotify.Spotify"; ipackages}) 
Add-Label-Clickeable -MiControl $panelAV -Texto "Audacity" -X $cx_ar[2] -Y $cy_ar[2]; $buttonaud = Add-Button -Control $panelAV -Text " " -X ($cx_ar[2] -35) -Y ($cy_ar[2]) -Width 30 -Height 20 -ForeColor '#FFFFFF'; $buttonaud.Add_Click({$global:app="XP8K0J757HHRDW"; ipackages}) 
Add-Label-Clickeable -MiControl $panelAV -Texto "MPC-HC" -X $cx_ar[3] -Y $cy_ar[3]; $buttonmpc = Add-Button -Control $panelAV -Text " " -X ($cx_ar[3] -35) -Y ($cy_ar[3]) -Width 30 -Height 20 -ForeColor '#FFFFFF'; $buttonmpc.Add_Click({$global:app="clsid2.mpc-hc"; ipackages}) 



#Elemento de Text Editors/IDEs
$labelGPU = Add-Label -control $panelPlaceholder6 -Text "Text Editors/IDEs" -X 0 -Y 5 -Width $panel_width -Height 25 -ForeColor '#8E44AD' -Size 15
Add-Label-Clickeable -MiControl $panelPlaceholder6 -Texto "Notepad++ " -X $cx_ar[0] -Y $cy_ar[0]
Add-Label-Clickeable -MiControl $panelPlaceholder6 -Texto "Jerbrains toolbox" -X $cx_ar[1] -Y $cy_ar[1]
Add-Label-Clickeable -MiControl $panelPlaceholder6 -Texto "VS code" -X $cx_ar[2] -Y $cy_ar[2]
Add-Label-Clickeable -MiControl $panelPlaceholder6 -Texto "VS coium" -X $cx_ar[3] -Y $cy_ar[3]
Add-Label-Clickeable -MiControl $panelPlaceholder6 -Texto "Visual Estudio 2022 Community" -X $cx_ar[4] -Y $cy_ar[4]
Add-Label-Clickeable -MiControl $panelPlaceholder6 -Texto "Jetbrains Toolbox" -X $cx_ar[5] -Y $cy_ar[5]

#Elemento de emuladores
$labelGPU = Add-Label -control $panelemuladores -Text "emulaores " -X 0 -Y 5 -Width $panel_width -Height 25 -ForeColor '#8E44AD' -Size 15
Add-Label-Clickeable -MiControl $panelemuladores -Texto "Bluestacks " -X $cx_ar[0] -Y $cy_ar[0]
Add-Label-Clickeable -MiControl $panelemuladores -Texto "CEMU" -X $cx_ar[1] -Y $cy_ar[1]
Add-Label-Clickeable -MiControl $panelemuladores -Texto "Ryujinx" -X $cx_ar[2] -Y $cy_ar[2]
Add-Label-Clickeable -MiControl $panelemuladores -Texto "Dolphin" -X $cx_ar[3] -Y $cy_ar[3]

#Elemento de emuladores
$labelGPU = Add-Label -control $panelEmuladores -Text "emulaores " -X 0 -Y 5 -Width $panel_width -Height 25 -ForeColor '#8E44AD' -Size 15
Add-Label-Clickeable -MiControl $panelEmuladores -Texto "Bluestacks " -X $cx_ar[0] -Y $cy_ar[0]
Add-Label-Clickeable -MiControl $panelEmuladores -Texto "CEMU" -X $cx_ar[1] -Y $cy_ar[1]
Add-Label-Clickeable -MiControl $panelEmuladores -Texto "Ryujinx" -X $cx_ar[2] -Y $cy_ar[2]
Add-Label-Clickeable -MiControl $panelEmuladores -Texto "Dolphin" -X $cx_ar[3] -Y $cy_ar[3]


ajustarPosicionPaneles -Paneles $panelNavegadores, $panelGpuCpuDrivers, $panelCompresor, $panelGaming, $panelPlaceholder3, $panelComun , $panelAV , $panelplaceholder6 , $panelEmuladores, $panelEmuladores

#####POR LAS DUDAS#######
#$chBoxDiscord DISCORD
#chBoxUbiConnect UBISOFT CONNECT