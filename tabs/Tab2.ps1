#Esto es para que se ajusten la posicion de los paneles a cuanton miden. SOLO LLAMAR AL FINAL.
####RODRIGO Y JULIAN: TIENEN QUE HACER FUNCIONES DE LOS BOTONES.###########
$tituloTab2 = Add-Label -control $tab2Install -Text "Instalacion de software" -X 0 -Y 10 -Width ($formPrincipal.Width-50) -Height 50 -ForeColor '#f54242' -Size 30
Add-Label -control $tab2Install -Text "DEVTEST" -X 0 -Y 70 -Width ($formPrincipal.Width-50) -Height 30 -ForeColor '#ffffff' -Size 20


$buttonInstalUnin = Add-Button -Control $tab2Install -Text "ACTUALIZAR TODO" -X ($formPrincipal.Width / 2 -225) -Y 100 -Width 225 -Height 30 -ForeColor '#00FF00'; $buttonInstalUnin.Add_Click({zVIVE})

$buttonInstalUnin.Add_Click{
    Confirm-Action -Message 'Estas seguro que quieres actualizar todo Algunas aplicaciones no se actualizaran (no winget)?' -Title 'Confirmacion' -YesAction {
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
$panelStreaming = Add-Panel-Autosized -Control $tab2Install -X 0 -Y 0
$panelComun = Add-Panel-Autosized -Control $tab2Install -X 0 -Y 0
$panelAV = Add-Panel-Autosized -control $tab2Install -X 0 -Y 0
$panelEmuladores = Add-Panel-Autosized -control $tab2Install -X 0 -Y 0
$panelEditors = Add-Panel-Autosized -control $tab2Install -X 0 -Y 0
$paneFileCompression = Add-Panel-Autosized -control $tab2Install -X 0 -Y 0
$paneFileDocumet = Add-Panel-Autosized -control $tab2Install -X 0 -Y 0
$panelRemote = Add-Panel-Autosized -control $tab2Install -X 0 -Y 0
$panelTorrent = Add-Panel-Autosized -control $tab2Install -X 0 -Y 0
$panelAcaemic = Add-Panel-Autosized -control $tab2Install -X 0 -Y 0
$panelSubsystem = Add-Panel-Autosized -control $tab2Install -X 0 -Y 0
$panelNetwork = Add-Panel-Autosized -control $tab2Install -X 0 -Y 0
$panelUICustomization = Add-Panel-Autosized -control $tab2Install -X 0 -Y 0
$panelDevelopment = Add-Panel-Autosized -control $tab2Install -X 0 -Y 0


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

#Label de Navegadores
Add-Label -control $panelNavegadores -Text "Navegadores" -X 0 -Y 5 -Width $panel_width -Height 25 -ForeColor '#8E44AD' -Size 15;
$labelchrome = Add-Label -control $panelNavegadores -Text "Chrome" -X $cx_ar[0] -Y $cy_ar[0] -ForeColor '#FFFF66'
    $labelchrome.Add_Click({$global:app="Google.Chrome"; ipackages})
$labelbrave = Add-Label -control $panelNavegadores -Text "Brave" -X $cx_ar[1] -Y $cy_ar[1] -ForeColor '#FFFF66'
    $labelbrave.Add_Click({$global:app="XP8C9QZMS2PC1T"; ipackages})
$labelfirefox = Add-Label -control $panelNavegadores -Text "Firefox" -X $cx_ar[2] -Y $cy_ar[2] -ForeColor '#FFFF66'
    $labelfirefox.Add_Click({$global:app="9NZVDKPMR9RD"; ipackages})
$labelopera = Add-Label -control $panelNavegadores -Text "Opera" -X $cx_ar[3] -Y $cy_ar[3] -ForeColor '#FFFF66'
    $labelopera.Add_Click({$global:app="Opera.Opera"; ipackages})
$labeloperagx = Add-Label -control $panelNavegadores -Text "Opera GX" -X $cx_ar[4] -Y $cy_ar[4] -ForeColor '#FFFF66'
    $labeloperagx.Add_Click({$global:app="Opera.OperaGX"; ipackages});

#Buttons de Navegadores
$buttonchrome = Add-Button -Control $panelNavegadores -Text " " -X ($cx_ar[0] -35) -Y ($cy_ar[0]) -Width 30 -Height 20 -ForeColor '#FFFFFF'; 
    $buttonchrome.Add_Click({$global:app="Google.Chrome"; upackages});
$buttonbrave = Add-Button -Control $panelNavegadores -Text " " -X ($cx_ar[1] -35) -Y ($cy_ar[1]) -Width 30 -Height 20 -ForeColor '#FFFFFF'; 
    $buttonbrave.Add_Click({$global:app="XP8C9QZMS2PC1T"; upackages}); 
$buttonfirefox = Add-Button -Control $panelNavegadores -Text " " -X ($cx_ar[2] -35) -Y ($cy_ar[2]) -Width 30 -Height 20 -ForeColor '#FFFFFF'; 
    $buttonfirefox.Add_Click({$global:app="9NZVDKPMR9RD"; upackages}); 
$buttonopera = Add-Button -Control $panelNavegadores -Text " " -X ($cx_ar[3] -35) -Y ($cy_ar[3]) -Width 30 -Height 20 -ForeColor '#FFFFFF'; 
    $buttonopera.Add_Click({$global:app="Opera.Opera"; upackages}); 
$buttonoperagx = Add-Button -Control $panelNavegadores -Text " " -X ($cx_ar[4] -35) -Y ($cy_ar[4]) -Width 30 -Height 20 -ForeColor '#FFFFFF'; 
    $buttonoperagx.Add_Click({$global:app="Opera.OperaGX"; upackages}); 



#Elementos de paneles para los drivers
$labelGPU = Add-Label -control $panelGpuCpuDrivers -Text "Driver de CPU/GPU" -X 0 -Y 5 -Width $panel_width -Height 25 -ForeColor '#8E44AD' -Size 15
$labelControladorAMD = Add-Label -control $panelGpuCpuDrivers -Text "Controlador AMD Ryzen Chipset" -X $cx_ar[0] -Y $cy_ar[0] -ForeColor '#FFFF66'
    $labelControladorAMD.Add_Click({cuadroMensaje -Text "BOTON INDEFINIDO"})
$labelNvidia = Add-Label -control $panelGpuCpuDrivers -Text "Nvidia Drivers" -X $cx_ar[1] -Y $cy_ar[1] -ForeColor '#FFFF66'
    $labelNvidia.Add_Click({cuadroMensaje -Text "BOTON INDEFINIDO"})

#Buttons para drivers
$buttonControladorAMD = Add-Button -Control $panelGpuCpuDrivers -Text " " -X ($cx_ar[0] -35) -Y ($cy_ar[0]) -Width 30 -Height 20 -ForeColor '#FFFFFF'; 
    $buttonControladorAMD.Add_Click({cuadroMensaje -Text "BOTON INDEFINIDO"})
$buttonNvidia = Add-Button -Control $panelGpuCpuDrivers -Text " " -X ($cx_ar[1] -35) -Y ($cy_ar[1]) -Width 30 -Height 20 -ForeColor '#FFFFFF'; 
    $buttonNvidia.Add_Click({cuadroMensaje -Text "BOTON INDEFINIDO"})

#Labels para compresores
$labelCompresor = Add-Label -control $panelCompresor -Text "Programas de compresion" -X 0 -Y 5 -Width $panel_width -Height 25 -ForeColor '#8E44AD' -Size 15
$labelwinrar = Add-Label -control $panelCompresor -Text "Winrar (Version de Prueba)" -X $cx_ar[0] -Y $cy_ar[0] -ForeColor '#FFFF66'
    $labelwinrar.Add_Click({$global:app="RARLab.WinRAR"; ipackages}) 
$label7z = Add-Label -control $panelCompresor -Text "7-Zip" -X $cx_ar[1] -Y $cy_ar[1] -ForeColor '#FFFF66'
    $label7z.Add_Click({$global:app="7zip.7zip"; ipackages}) 

#Buttons para compresores
$buttonwinr = Add-Button -Control $panelCompresor -Text " " -X ($cx_ar[0] -35) -Y ($cy_ar[0]) -Width 30 -Height 20 -ForeColor '#FFFFFF'; 
    $buttonwinr.Add_Click({$global:app="RARLab.WinRAR"; upackages}) 
$button7z = Add-Button -Control $panelCompresor -Text " " -X ($cx_ar[1] -35) -Y ($cy_ar[1]) -Width 30 -Height 20 -ForeColor '#FFFFFF'; 
    $button7z.Add_Click({$global:app="7zip.7zip"; upackages}) 


#Label para gaming
$labelGaming = Add-Label -control $panelGaming -Text "Gaming" -X 0 -Y 5 -Width $panel_width -Height 25 -ForeColor '#8E44AD' -Size 15
$labelgog = Add-Label -control $panelGaming -Text "GOG Galaxy " -X $cx_ar[0] -Y $cy_ar[0] -ForeColor '#FFFF66'
    $labelgog.Add_Click({$global:app="GOG.Galaxy"; ipackages}) 
$labelepic = Add-Label -control $panelGaming -Text "Epic games Launcher" -X $cx_ar[1] -Y $cy_ar[1] -ForeColor '#FFFF66'
    $labelepic.Add_Click({$global:app="EpicGames.EpicGamesLauncher"; ipackages}) 
$labelsteam = Add-Label -control $panelGaming -Text "Steam " -X $cx_ar[2] -Y $cy_ar[2] -ForeColor '#FFFF66'
    $labelsteam.Add_Click({$global:app="Valve.Steam"; ipackages}) 
$labelubisoft = Add-Label -control $panelGaming -Text "Ubisofft Connct" -X $cx_ar[3] -Y $cy_ar[3] -ForeColor '#FFFF66'
    $labelubisoft.Add_Click({$global:app="Ubisoft.Connect"; ipackages}) 
$labeleadesk = Add-Label -control $panelGaming -Text "Ea Desktop" -X $cx_ar[4] -Y $cy_ar[4] -ForeColor '#FFFF66'
    $labeleadesk.Add_Click({$global:app="ElectronicArts.EADesktop"; ipackages}) 

#Buttons para gaming
$buttongog = Add-Button -Control $panelGaming -Text " " -X ($cx_ar[0] -35) -Y ($cy_ar[0]) -Width 30 -Height 20 -ForeColor '#FFFFFF'; 
    $buttongog.Add_Click({$global:app="GOG.Galaxy"; upackages}) 
$buttonepic = Add-Button -Control $panelGaming -Text " " -X ($cx_ar[1] -35) -Y ($cy_ar[1]) -Width 30 -Height 20 -ForeColor '#FFFFFF';
    $buttonepic.Add_Click({$global:app="EpicGames.EpicGamesLauncher"; upackages}) 
$buttonsteam = Add-Button -Control $panelGaming -Text " " -X ($cx_ar[2] -35) -Y ($cy_ar[2]) -Width 30 -Height 20 -ForeColor '#FFFFFF'; 
    $buttonsteam.Add_Click({$global:app="Valve.Steam"; upackages}) 
$buttonubisoft = Add-Button -Control $panelGaming -Text " " -X ($cx_ar[3] -35) -Y ($cy_ar[3]) -Width 30 -Height 20 -ForeColor '#FFFFFF';
    $buttonubisoft.Add_Click({$global:app="Ubisoft.Connect"; upackages}) 
$buttoneadesk = Add-Button -Control $panelGaming -Text " " -X ($cx_ar[4] -35) -Y ($cy_ar[4]) -Width 30 -Height 20 -ForeColor '#FFFFFF'; 
    $buttoneadesk.Add_Click({$global:app="ElectronicArts.EADesktop"; upackages}) 


#Elemento de streaming* services
$labelGPU = Add-Label -control $panelStreaming -Text "Streaming Services" -X 0 -Y 5 -Width $panel_width -Height 25 -ForeColor '#8E44AD' -Size 15
$labelAmazon = Add-Label -control $panelStreaming -Text "Amazon Prime Video" -X $cx_ar[0] -Y $cy_ar[0] -ForeColor '#FFFF66'
    $labelAmazon.Add_Click({cuadroMensaje -Text "BOTON INDEFINIDO"})
$labelDisney = Add-Label -control $panelStreaming -Text "Disney+" -X $cx_ar[1] -Y $cy_ar[1] -ForeColor '#FFFF66'
    $labelDisney.Add_Click({cuadroMensaje -Text "BOTON INDEFINIDO"})
$labelNetflix = Add-Label -control $panelStreaming -Text "Netflix" -X $cx_ar[2] -Y $cy_ar[2] -ForeColor '#FFFF66'
    $labelNetflix.Add_Click({cuadroMensaje -Text "BOTON INDEFINIDO"})
$labelSpoti = Add-Label -control $panelStreaming -Text "Spotify" -X $cx_ar[3] -Y $cy_ar[3] -ForeColor '#FFFF66'
    $labelSpoti.Add_Click({cuadroMensaje -Text "BOTON INDEFINIDO"})

#Buttons de Streaming services
$buttonAmazon = Add-Button -Control $panelStreaming -Text " " -X ($cx_ar[0] -35) -Y ($cy_ar[0]) -Width 30 -Height 20 -ForeColor '#FFFFFF'
    $buttonAmazon.Add_Click({cuadroMensaje -Text "BOTON INDEFINIDO"})
$buttonDisney = Add-Button -Control $panelStreaming -Text " " -X ($cx_ar[1] -35) -Y ($cy_ar[1]) -Width 30 -Height 20 -ForeColor '#FFFFFF'
    $buttonDisney.Add_Click({cuadroMensaje -Text "BOTON INDEFINIDO"})
$buttonNetflix = Add-Button -Control $panelStreaming -Text " " -X ($cx_ar[2] -35) -Y ($cy_ar[2]) -Width 30 -Height 20 -ForeColor '#FFFFFF'
    $buttonNetflix.Add_Click({cuadroMensaje -Text "BOTON INDEFINIDO"})
$buttonSpoti = Add-Button -Control $panelStreaming -Text " " -X ($cx_ar[3] -35) -Y ($cy_ar[3]) -Width 30 -Height 20 -ForeColor '#FFFFFF'
    $buttonSpoti.Add_Click({cuadroMensaje -Text "BOTON INDEFINIDO"})

#Labels de Comunicacion
$labelComun = Add-Label -control $panelComun -Text "Comunicacion" -X 0 -Y 5 -Width $panel_width -Height 25 -ForeColor '#8E44AD' -Size 15
$labeldisc = Add-Label -control $panelComun -Text "Discord " -X $cx_ar[0] -Y $cy_ar[0] -ForeColor '#FFFF66'
    $labeldisc.Add_Click({$global:app="Discord.Discord"; ipackages}) 
$labelsky = Add-Label -control $panelComun -Text "Skype" -X $cx_ar[1] -Y $cy_ar[1] -ForeColor '#FFFF66'
    $labelsky.Add_Click({$global:app="9WZDNCRFJ364"; ipackages}) 
$labelslack = Add-Label -control $panelComun -Text "Slack" -X $cx_ar[2] -Y $cy_ar[2] -ForeColor '#FFFF66'
    $labelslack.Add_Click({$global:app="9WZDNCRDK3WP"; ipackages}) 
$labelwhats = Add-Label -control $panelComun -Text "WhatsApp Desktop" -X $cx_ar[3] -Y $cy_ar[3] -ForeColor '#FFFF66'
    $labelwhats.Add_Click({$global:app="WhatsApp.WhatsApp"; ipackages})

#Buttons de Comunicacion
$buttondisc = Add-Button -Control $panelComun -Text " " -X ($cx_ar[0] -35) -Y ($cy_ar[0]) -Width 30 -Height 20 -ForeColor '#FFFFFF'; 
    $buttondisc.Add_Click({$global:app="Discord.Discord"; upackages}) 
$buttonsky = Add-Button -Control $panelComun -Text " " -X ($cx_ar[1] -35) -Y ($cy_ar[1]) -Width 30 -Height 20 -ForeColor '#FFFFFF'; 
    $buttonsky.Add_Click({$global:app="9WZDNCRFJ364"; upackages}) 
$buttonslack = Add-Button -Control $panelComun -Text " " -X ($cx_ar[2] -35) -Y ($cy_ar[2]) -Width 30 -Height 20 -ForeColor '#FFFFFF'; 
    $buttonslack.Add_Click({$global:app="9WZDNCRDK3WP"; upackages}) 
$buttonwhats = Add-Button -Control $panelComun -Text " " -X ($cx_ar[3] -35) -Y ($cy_ar[3]) -Width 30 -Height 20 -ForeColor '#FFFFFF'; 
    $buttonwhats.Add_Click({$global:app="WhatsApp.WhatsApp"; upackages}) 

#Labels de AV
$labelAV = Add-Label -control $panelAV -Text "Audio/Video" -X 0 -Y 5 -Width $panel_width -Height 25 -ForeColor '#8E44AD' -Size 15
$labelvlc = Add-Label -control $panelAV -Text "VLC" -X $cx_ar[0] -Y $cy_ar[0] -ForeColor '#FFFF66'
    $labelvlc.Add_Click({$global:app="XPDM1ZW6815MQM"; ipackages})
$labelspoti = Add-Label -control $panelAV -Text "Spotify" -X $cx_ar[1] -Y $cy_ar[1] -ForeColor '#FFFF66'
    $labelspoti.Add_Click({$global:app="Spotify.Spotify"; ipackages})
$labelaud = Add-Label -control $panelAV -Text "Audacity" -X $cx_ar[2] -Y $cy_ar[2] -ForeColor '#FFFF66'
    $labelaud.Add_Click({$global:app="XP8K0J757HHRDW"; ipackages}) 
$labelmpc = Add-Label -control $panelAV -Text "MPC-HC" -X $cx_ar[3] -Y $cy_ar[3] -ForeColor '#FFFF66'
    $labelmpc.Add_Click({$global:app="clsid2.mpc-hc"; ipackages})

#Buttons de AV
$buttonvlc = Add-Button -Control $panelAV -Text " " -X ($cx_ar[0] -35) -Y ($cy_ar[0]) -Width 30 -Height 20 -ForeColor '#FFFFFF'; 
    $buttonvlc.Add_Click({$global:app="XPDM1ZW6815MQM"; upackages}) 
$buttonspoti = Add-Button -Control $panelAV -Text " " -X ($cx_ar[1] -35) -Y ($cy_ar[1]) -Width 30 -Height 20 -ForeColor '#FFFFFF'; 
    $buttonspoti.Add_Click({$global:app="Spotify.Spotify"; upackages}) 
$buttonaud = Add-Button -Control $panelAV -Text " " -X ($cx_ar[2] -35) -Y ($cy_ar[2]) -Width 30 -Height 20 -ForeColor '#FFFFFF'; 
    $buttonaud.Add_Click({$global:app="XP8K0J757HHRDW"; upackages}) 
$buttonmpc = Add-Button -Control $panelAV -Text " " -X ($cx_ar[3] -35) -Y ($cy_ar[3]) -Width 30 -Height 20 -ForeColor '#FFFFFF'; 
    $buttonmpc.Add_Click({$global:app="clsid2.mpc-hc"; upackages})



#Labels de emuladores
$labelEmu = Add-Label -control $panelEmuladores -Text "Emuladores " -X 0 -Y 5 -Width $panel_width -Height 25 -ForeColor '#8E44AD' -Size 15
$labelblue = Add-Label -Control $panelEmuladores -Text "Bluestacks " -X $cx_ar[0] -Y $cy_ar[0] -ForeColor '#FFFF66'
    $labelblue.Add_Click({$global:app="BlueStack.BlueStacks"; ipackages})
$labelcemu = Add-Label -Control $panelEmuladores -Text "CEMU" -X $cx_ar[1] -Y $cy_ar[1] -ForeColor '#FFFF66'
    $labelcemu.Add_Click({$global:app="Cemu.Cemu"; ipackages}) 
$labelryu = Add-Label -Control $panelEmuladores -Text "Ryujinx" -X $cx_ar[2] -Y $cy_ar[2] -ForeColor '#FFFF66'
    $labelryu.Add_Click({$global:app="Ryujinx.Ryujinx.Ava"; ipackages}) 
$labeldol = Add-Label -Control $panelEmuladores -Text "Dolphin" -X $cx_ar[3] -Y $cy_ar[3] -ForeColor '#FFFF66'
    $labeldol.Add_Click({$global:app=" DolphinEmulator.Dolphin"; ipackages})
$labelyuzu = Add-Label -Control $panelEmuladores -Text "Yuzu" -X $cx_ar[4] -Y $cy_ar[4] -ForeColor '#FFFF66'
    $labelyuzu.Add_Click({$global:app="YuzuEmu.Yuzu.Mainline"; ipackages}) 

#Buttons de emuladores
$buttonblue = Add-Button -Control $panelEmuladores -Text " " -X ($cx_ar[0] -35) -Y ($cy_ar[0]) -Width 30 -Height 20 -ForeColor '#FFFFFF'; 
    $buttonblue.Add_Click({$global:app="BlueStack.BlueStacks"; upackages})
$buttoncemu = Add-Button -Control $panelEmuladores -Text " " -X ($cx_ar[1] -35) -Y ($cy_ar[1]) -Width 30 -Height 20 -ForeColor '#FFFFFF';
    $buttoncemu.Add_Click({$global:app="Cemu.Cemu"; upackages}) 
$buttonryu = Add-Button -Control $panelEmuladores -Text " " -X ($cx_ar[2] -35) -Y ($cy_ar[2]) -Width 30 -Height 20 -ForeColor '#FFFFFF'; 
    $buttonryu.Add_Click({$global:app="Ryujinx.Ryujinx.Ava"; upackages}) 
$buttondol = Add-Button -Control $panelEmuladores -Text " " -X ($cx_ar[3] -35) -Y ($cy_ar[3]) -Width 30 -Height 20 -ForeColor '#FFFFFF'; 
    $buttondol.Add_Click({$global:app=" DolphinEmulator.Dolphin"; upackages}) 
$buttonyuzu = Add-Button -Control $panelEmuladores -Text " " -X ($cx_ar[4] -35) -Y ($cy_ar[4]) -Width 30 -Height 20 -ForeColor '#FFFFFF'; 
    $buttonyuzu.Add_Click({$global:app="YuzuEmu.Yuzu.Mainline"; upackages}) 




#Labels de Editors/DIEs
$labelJet = Add-Label -control $panelEditors -Text "Editores" -X 0 -Y 5 -Width $panel_width -Height 25 -ForeColor '#8E44AD' -Size 15
$labelplusplus = Add-Label -Control $panelEditors -Text "Notepad++ " -X $cx_ar[0] -Y $cy_ar[0] -ForeColor '#FFFF66'
    $labelplusplus.Add_Click({cuadroMensaje -Text "BOTON INDEFINIDO"})
$labelVS2022 = Add-Label -Control $panelEditors -Text "Visual Studio 2022 Community" -X $cx_ar[1] -Y $cy_ar[1] -ForeColor '#FFFF66'
    $labelVS2022.Add_Click({cuadroMensaje -Text "BOTON INDEFINIDO"})
$labelVSC = Add-Label -Control $panelEditors -Text "Visual Studio Code" -X $cx_ar[2] -Y $cy_ar[2] -ForeColor '#FFFF66'
    $labelVSC.Add_Click({cuadroMensaje -Text "BOTON INDEFINIDO"})
$labelVSCU = Add-Label -Control $panelEditors -Text "Visual studio Codium" -X $cx_ar[3] -Y $cy_ar[3] -ForeColor '#FFFF66'
    $labelVSCU.Add_Click({cuadroMensaje -Text "BOTON INDEFINIDO"})

#Buttons de Editors/DIEs
$buttonplusplus = Add-Button -Control $panelEditors -Text " " -X ($cx_ar[0] -35) -Y ($cy_ar[0]) -Width 30 -Height 20 -ForeColor '#FFFFFF'; 
    $buttonplusplus.Add_Click({cuadroMensaje -Text "BOTON INDEFINIDO"})
$buttonVS2022 = Add-Button -Control $panelEditors -Text " " -X ($cx_ar[1] -35) -Y ($cy_ar[1]) -Width 30 -Height 20 -ForeColor '#FFFFFF';
    $buttonVS2022.Add_Click({cuadroMensaje -Text "BOTON INDEFINIDO"})
$buttonVSC = Add-Button -Control $panelEditors -Text " " -X ($cx_ar[2] -35) -Y ($cy_ar[2]) -Width 30 -Height 20 -ForeColor '#FFFFFF'; 
    $buttonVSC.Add_Click({cuadroMensaje -Text "BOTON INDEFINIDO"})
$buttonVSCU = Add-Button -Control $panelEditors -Text " " -X ($cx_ar[3] -35) -Y ($cy_ar[3]) -Width 30 -Height 20 -ForeColor '#FFFFFF'; 
    $buttonVSCU.Add_Click({cuadroMensaje -Text "BOTON INDEFINIDO"})


#Labels de File Compression
$labelCompress = Add-Label -control $paneFileCompression -Text "Compresores de Archivo" -X 0 -Y 5 -Width $panel_width -Height 25 -ForeColor '#8E44AD' -Size 15
$labelsevenzip = Add-Label -Control $paneFileCompression -Text "7-Zip " -X $cx_ar[0] -Y $cy_ar[0] -ForeColor '#FFFF66'
    $labelsevenzip.Add_Click({cuadroMensaje -Text "BOTON INDEFINIDO"})
$labelwinrar = Add-Label -Control $paneFileCompression -Text "Winrar (Periodo de Prueba)" -X $cx_ar[1] -Y $cy_ar[1] -ForeColor '#FFFF66'
    $labelwinrar.Add_Click({cuadroMensaje -Text "BOTON INDEFINIDO"})

#Buttons de File Compression
$buttonsevenzip = Add-Button -Control $paneFileCompression -Text " " -X ($cx_ar[0] -35) -Y ($cy_ar[0]) -Width 30 -Height 20 -ForeColor '#FFFFFF'; 
    $buttonsevenzip.Add_Click({cuadroMensaje -Text "BOTON INDEFINIDO"})
$buttonwinrar = Add-Button -Control $paneFileCompression -Text " " -X ($cx_ar[1] -35) -Y ($cy_ar[1]) -Width 30 -Height 20 -ForeColor '#FFFFFF';
    $buttonwinrar.Add_Click({cuadroMensaje -Text "BOTON INDEFINIDO"})

#Labels de Documents Editor/Reader(s)
$labelGPU = Add-Label -control $paneFileDocumet  -Text "Lector/Editor de Documentos" -X 0 -Y 5 -Width $panel_width -Height 25 -ForeColor '#8E44AD' -Size 15
$labelAdober = Add-Label -Control $paneFileDocumet -Text "Adobe Reader" -X $cx_ar[0] -Y $cy_ar[0] -ForeColor '#FFFF66'
    $labelAdober.Add_Click({cuadroMensaje -Text "BOTON INDEFINIDO"})
$labelOO = Add-Label -Control $paneFileDocumet -Text "OnlyOffice (Desktop Editor)" -X $cx_ar[1] -Y $cy_ar[1] -ForeColor '#FFFF66'
    $labelOO.Add_Click({cuadroMensaje -Text "BOTON INDEFINIDO"})
$labelPDFCC = Add-Label -Control $paneFileDocumet -Text "PDF Creator/Converter" -X $cx_ar[2] -Y $cy_ar[2] -ForeColor '#FFFF66'
    $labelPDFCC.Add_Click({cuadroMensaje -Text "BOTON INDEFINIDO"})
$labelb1 = Add-Label -Control $paneFileDocumet -Text "Power B1" -X $cx_ar[3] -Y $cy_ar[3] -ForeColor '#FFFF66'
    $labelb1.Add_Click({cuadroMensaje -Text "BOTON INDEFINIDO"})
$labelSumapdf = Add-Label -Control $paneFileDocumet -Text "Sumatra PDF" -X $cx_ar[4] -Y $cy_ar[4] -ForeColor '#FFFF66'
    $labelSumapdf.Add_Click({cuadroMensaje -Text "BOTON INDEFINIDO"})

#Buttons de Documents Editor/Reader(s)
$buttonAdober = Add-Button -Control $paneFileDocumet -Text " " -X ($cx_ar[0] -35) -Y ($cy_ar[0]) -Width 30 -Height 20 -ForeColor '#FFFFFF'; 
    $buttonAdober.Add_Click({cuadroMensaje -Text "BOTON INDEFINIDO"})
$buttonOO = Add-Button -Control $paneFileDocumet -Text " " -X ($cx_ar[1] -35) -Y ($cy_ar[1]) -Width 30 -Height 20 -ForeColor '#FFFFFF';
    $buttonOO.Add_Click({cuadroMensaje -Text "BOTON INDEFINIDO"})
$buttonPDFCC = Add-Button -Control $paneFileDocumet -Text " " -X ($cx_ar[2] -35) -Y ($cy_ar[2]) -Width 30 -Height 20 -ForeColor '#FFFFFF';
    $buttonPDFCC.Add_Click({cuadroMensaje -Text "BOTON INDEFINIDO"})
$buttonb1 = Add-Button -Control $paneFileDocumet -Text " " -X ($cx_ar[3] -35) -Y ($cy_ar[3]) -Width 30 -Height 20 -ForeColor '#FFFFFF';
    $buttonb1.Add_Click({cuadroMensaje -Text "BOTON INDEFINIDO"})
$buttonSumapdf = Add-Button -Control $paneFileDocumet -Text " " -X ($cx_ar[4] -35) -Y ($cy_ar[4]) -Width 30 -Height 20 -ForeColor '#FFFFFF';
    $buttonSumapdf.Add_Click({cuadroMensaje -Text "BOTON INDEFINIDO"})


#Labels de Remote Connection
$labelGPU = Add-Label -control $panelRemote -Text "Remote Connection" -X 0 -Y 5 -Width $panel_width -Height 25 -ForeColor '#8E44AD' -Size 15
$labelAnydesk = Add-Label -Control $panelRemote -Text "AnyDesk" -X $cx_ar[0] -Y $cy_ar[0] -ForeColor '#FFFF66'
    $labelAnydesk.Add_Click({cuadroMensaje -Text "BOTON INDEFINIDO"})
$labelParsec = Add-Label -Control $panelRemote -Text "Parsec" -X $cx_ar[1] -Y $cy_ar[1] -ForeColor '#FFFF66'
    $labelParsec.Add_Click({cuadroMensaje -Text "BOTON INDEFINIDO"})
$labelScr = Add-Label -Control $panelRemote -Text "ScrCpy (Android)" -X $cx_ar[2] -Y $cy_ar[2] -ForeColor '#FFFF66'
    $labelScr.Add_Click({cuadroMensaje -Text "BOTON INDEFINIDO"})
$labelTV = Add-Label -Control $panelRemote -Text "Team Viewer" -X $cx_ar[3] -Y $cy_ar[3] -ForeColor '#FFFF66'
    $labelTV.Add_Click({cuadroMensaje -Text "BOTON INDEFINIDO"})

#Buttons de Documents Editor/Reader(s)
$buttonAnydesk = Add-Button -Control $panelRemote -Text " " -X ($cx_ar[0] -35) -Y ($cy_ar[0]) -Width 30 -Height 20 -ForeColor '#FFFFFF'; 
    $buttonAnydesk.Add_Click({cuadroMensaje -Text "BOTON INDEFINIDO"})
$buttonParsec = Add-Button -Control $panelRemote -Text " " -X ($cx_ar[1] -35) -Y ($cy_ar[1]) -Width 30 -Height 20 -ForeColor '#FFFFFF';
    $buttonParsec.Add_Click({cuadroMensaje -Text "BOTON INDEFINIDO"})
$buttonScr = Add-Button -Control $panelRemote -Text " " -X ($cx_ar[2] -35) -Y ($cy_ar[2]) -Width 30 -Height 20 -ForeColor '#FFFFFF';
    $buttonScr.Add_Click({cuadroMensaje -Text "BOTON INDEFINIDO"})
$buttonTV = Add-Button -Control $panelRemote -Text " " -X ($cx_ar[3] -35) -Y ($cy_ar[3]) -Width 30 -Height 20 -ForeColor '#FFFFFF';
    $buttonTV.Add_Click({cuadroMensaje -Text "BOTON INDEFINIDO"})

#Estos paneles fueron sacados por su nivel de inutilidad
#Elementos de Torrent
#$labelGPU = Add-Label -control $panelTorrent -Text " Torrent " -X 0 -Y 5 -Width $panel_width -Height 25 -ForeColor '#8E44AD' -Size 15
#Add-Label-Clickeable -MiControl $panelTorrent  -Texto "qBittorrent " -X $cx_ar[0] -Y $cy_ar[0]
#Elementos Academic Research 
#$labelGPU = Add-Label -control $panelAcaemic -Text " Academic Research" -X 0 -Y 5 -Width $panel_width -Height 25 -ForeColor '#8E44AD' -Size 15
#Add-Label-Clickeable -MiControl $panelAcaemic -Texto "Zotero " -X $cx_ar[0] -Y $cy_ar[0]

#Labels de Bootable* USB
$labelGPU = Add-Label -control $panelBootale -Text "Bootale USB" -X 0 -Y 5 -Width $panel_width -Height 25 -ForeColor '#8E44AD' -Size 15
$labelEtcher = Add-Label -Control $panelBootale -Text "Etcher" -X $cx_ar[0] -Y $cy_ar[0] -ForeColor '#FFFF66'
    $labelEtcher.Add_Click({cuadroMensaje -Text "BOTON INDEFINIDO"})
$labelRufus = Add-Label -Control $panelBootale -Text "Rufus" -X $cx_ar[1] -Y $cy_ar[1] -ForeColor '#FFFF66'
    $labelRufus.Add_Click({cuadroMensaje -Text "BOTON INDEFINIDO"})
$labelVentoy = Add-Label -Control $panelBootale -Text "Ventoy" -X $cx_ar[2] -Y $cy_ar[2] -ForeColor '#FFFF66'
    $labelVentoy.Add_Click({cuadroMensaje -Text "BOTON INDEFINIDO"})

#Buttons de Bootable USB
$buttonEtcher = Add-Button -Control $panelBootale -Text " " -X ($cx_ar[0] -35) -Y ($cy_ar[0]) -Width 30 -Height 20 -ForeColor '#FFFFFF'; 
    $buttonEtcher.Add_Click({cuadroMensaje -Text "BOTON INDEFINIDO"})
$buttonRufus = Add-Button -Control $panelBootale -Text " " -X ($cx_ar[1] -35) -Y ($cy_ar[1]) -Width 30 -Height 20 -ForeColor '#FFFFFF';
    $buttonRufus.Add_Click({cuadroMensaje -Text "BOTON INDEFINIDO"})
$buttonVentoy = Add-Button -Control $panelBootale -Text " " -X ($cx_ar[2] -35) -Y ($cy_ar[2]) -Width 30 -Height 20 -ForeColor '#FFFFFF';
    $buttonVentoy.Add_Click({cuadroMensaje -Text "BOTON INDEFINIDO"})


#Labels Virtual Machines
$labelGPU = Add-Label -control $panelVirtual  -Text "Virtual Machines" -X 0 -Y 5 -Width $panel_width -Height 25 -ForeColor '#8E44AD' -Size 15
$labelOracleVM = Add-Label -Control $panelVirtual -Text "Oracle VM VirtualBox" -X $cx_ar[0] -Y $cy_ar[0] -ForeColor '#FFFF66'
    $labelOracleVM.Add_Click({cuadroMensaje -Text "BOTON INDEFINIDO"})
$labelQEMU = Add-Label -Control $panelVirtual -Text "QEMU" -X $cx_ar[1] -Y $cy_ar[1] -ForeColor '#FFFF66'
    $labelQEMU.Add_Click({cuadroMensaje -Text "BOTON INDEFINIDO"})
$labelvmware = Add-Label -Control $panelVirtual -Text "VMware Workstation Player" -X $cx_ar[2] -Y $cy_ar[2] -ForeColor '#FFFF66'
    $labelvmware.Add_Click({cuadroMensaje -Text "BOTON INDEFINIDO"})

#Button Virtual Machines
$buttonOracleVM = Add-Button -Control $panelVirtual -Text " " -X ($cx_ar[0] -35) -Y ($cy_ar[0]) -Width 30 -Height 20 -ForeColor '#FFFFFF'; 
    $buttonOracleVM.Add_Click({cuadroMensaje -Text "BOTON INDEFINIDO"})
$buttonQEMU = Add-Button -Control $panelVirtual -Text " " -X ($cx_ar[1] -35) -Y ($cy_ar[1]) -Width 30 -Height 20 -ForeColor '#FFFFFF';
    $buttonQEMU.Add_Click({cuadroMensaje -Text "BOTON INDEFINIDO"})
$buttonvmware = Add-Button -Control $panelVirtual -Text " " -X ($cx_ar[2] -35) -Y ($cy_ar[2]) -Width 30 -Height 20 -ForeColor '#FFFFFF';
    $buttonvmware.Add_Click({cuadroMensaje -Text "BOTON INDEFINIDO"})

#ALERTA DE LINDO PEDAZZZZO DE CODIGO ABAJO 
#Labels Windows Subsystem For Linux
$labelGPU = Add-Label -control $panelSubsystem -Text " Windows Subsystem For Linux " -X 0 -Y 5 -Width $panel_width -Height 25 -ForeColor '#8E44AD' -Size 15
$labelwsl = Add-Label -Control $panelSubsystem -Text "Install WSL" -X $cx_ar[0] -Y $cy_ar[0] -ForeColor '#FFFF66'
    $labelwsl.Add_Click({cuadroMensaje -Text "BOTON INDEFINIDO"})
$labelarchwsl = Add-Label -Control $panelSubsystem -Text "ArchWSL (x64)" -X $cx_ar[1] -Y $cy_ar[1] -ForeColor '#FFFF66'
    $labelarchwsl.Add_Click({cuadroMensaje -Text "BOTON INDEFINIDO"})
$labeldebian = Add-Label -Control $panelSubsystem -Text "Debian GNU/Linux" -X $cx_ar[2] -Y $cy_ar[2] -ForeColor '#FFFF66'
    $labeldebian.Add_Click({cuadroMensaje -Text "BOTON INDEFINIDO"})
$labelkali = Add-Label -Control $panelSubsystem -Text "Kali Linux Polling" -X $cx_ar[3] -Y $cy_ar[3] -ForeColor '#FFFF66'
    $labelkali.Add_Click({cuadroMensaje -Text "BOTON INDEFINIDO"})
$labelsuse = Add-Label -Control $panelSubsystem -Text "Open SUSE 42" -X $cx_ar[4] -Y $cy_ar[4] -ForeColor '#FFFF66'
    $labelsuse.Add_Click({cuadroMensaje -Text "BOTON INDEFINIDO"})
$labelsles = Add-Label -Control $panelSubsystem -Text "SLES v12" -X $cx_ar[5] -Y $cy_ar[5] -ForeColor '#FFFF66'
    $labelsles.Add_Click({cuadroMensaje -Text "BOTON INDEFINIDO"})
$labelubuntu = Add-Label -Control $panelSubsystem -Text "Ubuntu" -X $cx_ar[6] -Y $cy_ar[6] -ForeColor '#FFFF66'
    $labelubuntu.Add_Click({cuadroMensaje -Text "BOTON INDEFINIDO"})
$labelubuntu18 = Add-Label -Control $panelSubsystem -Text "Ubuntu LTS v18.04" -X $cx_ar[7] -Y $cy_ar[7] -ForeColor '#FFFF66'
    $labelubuntu18.Add_Click({cuadroMensaje -Text "BOTON INDEFINIDO"})
$labelubuntu20 = Add-Label -Control $panelSubsystem -Text "Ubuntu LTS v18.04" -X $cx_ar[8] -Y $cy_ar[8] -ForeColor '#FFFF66'
    $labelubuntu20.Add_Click({cuadroMensaje -Text "BOTON INDEFINIDO"})

#Buttons para Windows Subsystem For Linux
$buttonwsl = Add-Button -Control $panelSubsystem -Text " " -X ($cx_ar[0] -35) -Y ($cy_ar[0]) -Width 30 -Height 20 -ForeColor '#FFFFFF'; 
    $buttonwsl.Add_Click({cuadroMensaje -Text "BOTON INDEFINIDO"})
$buttonarchwsl = Add-Button -Control $panelSubsystem -Text " " -X ($cx_ar[1] -35) -Y ($cy_ar[1]) -Width 30 -Height 20 -ForeColor '#FFFFFF'; 
    $buttonarchwsl.Add_Click({cuadroMensaje -Text "BOTON INDEFINIDO"})
$buttondebian = Add-Button -Control $panelSubsystem -Text " " -X ($cx_ar[2] -35) -Y ($cy_ar[2]) -Width 30 -Height 20 -ForeColor '#FFFFFF'; 
    $buttondebian.Add_Click({cuadroMensaje -Text "BOTON INDEFINIDO"})
$buttonkali = Add-Button -Control $panelSubsystem -Text " " -X ($cx_ar[3] -35) -Y ($cy_ar[3]) -Width 30 -Height 20 -ForeColor '#FFFFFF'; 
    $buttonkali.Add_Click({cuadroMensaje -Text "BOTON INDEFINIDO"})
$buttonsuse = Add-Button -Control $panelSubsystem -Text " " -X ($cx_ar[4] -35) -Y ($cy_ar[4]) -Width 30 -Height 20 -ForeColor '#FFFFFF'; 
    $buttonsuse.Add_Click({cuadroMensaje -Text "BOTON INDEFINIDO"})
$buttonsles = Add-Button -Control $panelSubsystem -Text " " -X ($cx_ar[5] -35) -Y ($cy_ar[5]) -Width 30 -Height 20 -ForeColor '#FFFFFF'; 
    $buttonsles.Add_Click({cuadroMensaje -Text "BOTON INDEFINIDO"})
$buttonubuntu = Add-Button -Control $panelSubsystem -Text " " -X ($cx_ar[6] -35) -Y ($cy_ar[6]) -Width 30 -Height 20 -ForeColor '#FFFFFF'; 
    $buttonubuntu.Add_Click({cuadroMensaje -Text "BOTON INDEFINIDO"})
$buttonubuntu18 = Add-Button -Control $panelSubsystem -Text " " -X ($cx_ar[7] -35) -Y ($cy_ar[7]) -Width 30 -Height 20 -ForeColor '#FFFFFF'; 
    $buttonubuntu18.Add_Click({cuadroMensaje -Text "BOTON INDEFINIDO"})
$buttonubuntu24 = Add-Button -Control $panelSubsystem -Text " " -X ($cx_ar[8] -35) -Y ($cy_ar[8]) -Width 30 -Height 20 -ForeColor '#FFFFFF'; 
    $buttonubuntu24.Add_Click({cuadroMensaje -Text "BOTON INDEFINIDO"})


#Labels de Network Management
$labelGPU = Add-Label -control $panelNetwork -Text " Network Manegement " -X 0 -Y 5 -Width $panel_width -Height 25 -ForeColor '#8E44AD' -Size 15
$labelhamachi = Add-Label -Control $panelNetwork -Text "Homochi (LAN)" -X $cx_ar[0] -Y $cy_ar[0] -ForeColor '#FFFF66'
    $labelhamachi.Add_Click({cuadroMensaje -Text "BOTON INDEFINIDO"})
$labelputty = Add-Label -Control $panelNetwork -Text "PuTTY" -X $cx_ar[1] -Y $cy_ar[1] -ForeColor '#FFFF66'
    $labelputty.Add_Click({cuadroMensaje -Text "BOTON INDEFINIDO"})
$labelradmi = Add-Label -Control $panelNetwork -Text "Radmi VPN (LAN)" -X $cx_ar[2] -Y $cy_ar[2] -ForeColor '#FFFF66'
    $labelradmi.Add_Click({cuadroMensaje -Text "BOTON INDEFINIDO"})
$labelwinscp = Add-Label -Control $panelNetwork -Text "WinSCP" -X $cx_ar[3] -Y $cy_ar[3] -ForeColor '#FFFF66'
    $labelwinscp.Add_Click({cuadroMensaje -Text "BOTON INDEFINIDO"})
$labelwiresh = Add-Label -Control $panelNetwork -Text "Wireshark" -X $cx_ar[4] -Y $cy_ar[4] -ForeColor '#FFFF66'
    $labelwiresh.Add_Click({cuadroMensaje -Text "BOTON INDEFINIDO"})

#Buttons de Network Management
$buttonhamachi = Add-Button -Control $panelNetwork -Text " " -X ($cx_ar[0] -35) -Y ($cy_ar[0]) -Width 30 -Height 20 -ForeColor '#FFFFFF'; 
    $buttonhamachi.Add_Click({cuadroMensaje -Text "BOTON INDEFINIDO"})
$buttonputty = Add-Button -Control $panelNetwork -Text " " -X ($cx_ar[1] -35) -Y ($cy_ar[1]) -Width 30 -Height 20 -ForeColor '#FFFFFF';
    $buttonputty.Add_Click({cuadroMensaje -Text "BOTON INDEFINIDO"})
$buttonradmi = Add-Button -Control $panelNetwork -Text " " -X ($cx_ar[2] -35) -Y ($cy_ar[2]) -Width 30 -Height 20 -ForeColor '#FFFFFF';
    $buttonradmi.Add_Click({cuadroMensaje -Text "BOTON INDEFINIDO"})
$buttonwinscp = Add-Button -Control $panelNetwork -Text " " -X ($cx_ar[3] -35) -Y ($cy_ar[3]) -Width 30 -Height 20 -ForeColor '#FFFFFF';
    $buttonwinscp.Add_Click({cuadroMensaje -Text "BOTON INDEFINIDO"})
$buttonwiresh = Add-Button -Control $panelNetwork -Text " " -X ($cx_ar[4] -35) -Y ($cy_ar[4]) -Width 30 -Height 20 -ForeColor '#FFFFFF';
    $buttonwiresh.Add_Click({cuadroMensaje -Text "BOTON INDEFINIDO"})

#Labels de UI Customization
$labelGPU = Add-Label -control $panelUICustomization -Text "Interfaz Personalizada" -X 0 -Y 5 -Width $panel_width -Height 25 -ForeColor '#8E44AD' -Size 15
$labelrounded = Add-Label -Control $panelUICustomization -Text "Rounded TaskBar (BDT Redondeada)" -X $cx_ar[0] -Y $cy_ar[0] -ForeColor '#FFFF66'
    $labelrounded.Add_Click({cuadroMensaje -Text "BOTON INDEFINIDO"})
$labeltranslucent = Add-Label -Control $panelUICustomization -Text "Translucent TaskBar (BDT Translucida)" -X $cx_ar[1] -Y $cy_ar[1] -ForeColor '#FFFF66'
    $labeltranslucent.Add_Click({cuadroMensaje -Text "BOTON INDEFINIDO"})

#Button de UI Customization
$buttonOracleVM = Add-Button -Control $panelUICustomization -Text " " -X ($cx_ar[0] -35) -Y ($cy_ar[0]) -Width 30 -Height 20 -ForeColor '#FFFFFF'; 
    $buttonOracleVM.Add_Click({cuadroMensaje -Text "BOTON INDEFINIDO"})
$buttonQEMU = Add-Button -Control $panelUICustomization -Text " " -X ($cx_ar[1] -35) -Y ($cy_ar[1]) -Width 30 -Height 20 -ForeColor '#FFFFFF';
    $buttonQEMU.Add_Click({cuadroMensaje -Text "BOTON INDEFINIDO"})

#ALERTA DE LINDO PEDAZZZZO DE CODIGO ABAJO
#Labels de Development On Windows
$labelGPU = Add-Label -control $panelDevelopment -Text "Development On Windows" -X 0 -Y 5 -Width $panel_width -Height 25 -ForeColor '#8E44AD' -Size 15
$labelwt = Add-Label -Control $panelDevelopment -Text "Windows Terminal" -X $cx_ar[0] -Y $cy_ar[0] -ForeColor '#FFFF66'
    $labelwt.Add_Click({cuadroMensaje -Text "BOTON INDEFINIDO"})
$labelggs = Add-Label -Control $panelDevelopment -Text "Git + GnuPG + SSH (Setup)" -X $cx_ar[1] -Y $cy_ar[1] -ForeColor '#FFFF66'
    $labelggs.Add_Click({cuadroMensaje -Text "BOTON INDEFINIDO"})
$lbeladb = Add-Label -Control $panelDevelopment -Text "Android Debug Bridge (ADB)" -X $cx_ar[2] -Y $cy_ar[2] -ForeColor '#FFFF66'
    $lbeladb.Add_Click({cuadroMensaje -Text "BOTON INDEFINIDO"})
$labelands = Add-Label -Control $panelDevelopment -Text "Android Studio" -X $cx_ar[3] -Y $cy_ar[3] -ForeColor '#FFFF66'
    $labelands.Add_Click({cuadroMensaje -Text "BOTON INDEFINIDO"})
$labeljava = Add-Label -Control $panelDevelopment -Text "Java Oracle JRE" -X $cx_ar[4] -Y $cy_ar[4] -ForeColor '#FFFF66'
    $labeljava.Add_Click({cuadroMensaje -Text "BOTON INDEFINIDO"})
$labelmysql = Add-Label -Control $panelDevelopment -Text "MySQL" -X $cx_ar[5] -Y $cy_ar[5] -ForeColor '#FFFF66'
    $labelmysql.Add_Click({cuadroMensaje -Text "BOTON INDEFINIDO"})
$labelnodejs = Add-Label -Control $panelDevelopment -Text "NodeJS" -X $cx_ar[6] -Y $cy_ar[6] -ForeColor '#FFFF66'
    $labelnodejs.Add_Click({cuadroMensaje -Text "BOTON INDEFINIDO"})
$labelpyth3 = Add-Label -Control $panelDevelopment -Text "Python 3" -X $cx_ar[7] -Y $cy_ar[7] -ForeColor '#FFFF66'
    $labelpyth3.Add_Click({cuadroMensaje -Text "BOTON INDEFINIDO"})

#Button para Development On Windows
$buttonwt = Add-Button -Control $panelDevelopment -Text " " -X ($cx_ar[0] -35) -Y ($cy_ar[0]) -Width 30 -Height 20 -ForeColor '#FFFFFF'; 
    $buttonwt.Add_Click({cuadroMensaje -Text "BOTON INDEFINIDO"})
$buttonggs = Add-Button -Control $panelDevelopment -Text " " -X ($cx_ar[1] -35) -Y ($cy_ar[1]) -Width 30 -Height 20 -ForeColor '#FFFFFF'; 
    $buttonggs.Add_Click({cuadroMensaje -Text "BOTON INDEFINIDO"})
$buttonadb = Add-Button -Control $panelDevelopment -Text " " -X ($cx_ar[2] -35) -Y ($cy_ar[2]) -Width 30 -Height 20 -ForeColor '#FFFFFF'; 
    $buttonadb.Add_Click({cuadroMensaje -Text "BOTON INDEFINIDO"})
$buttonands = Add-Button -Control $panelDevelopment -Text " " -X ($cx_ar[3] -35) -Y ($cy_ar[3]) -Width 30 -Height 20 -ForeColor '#FFFFFF'; 
    $buttonands.Add_Click({cuadroMensaje -Text "BOTON INDEFINIDO"})
$buttonjava = Add-Button -Control $panelDevelopment -Text " " -X ($cx_ar[4] -35) -Y ($cy_ar[4]) -Width 30 -Height 20 -ForeColor '#FFFFFF'; 
    $buttonjava.Add_Click({cuadroMensaje -Text "BOTON INDEFINIDO"})
$buttonmysql = Add-Button -Control $panelDevelopment -Text " " -X ($cx_ar[5] -35) -Y ($cy_ar[5]) -Width 30 -Height 20 -ForeColor '#FFFFFF'; 
    $buttonmysql.Add_Click({cuadroMensaje -Text "BOTON INDEFINIDO"})
$buttonnodejs = Add-Button -Control $panelDevelopment -Text " " -X ($cx_ar[6] -35) -Y ($cy_ar[6]) -Width 30 -Height 20 -ForeColor '#FFFFFF'; 
    $buttonnodejs.Add_Click({cuadroMensaje -Text "BOTON INDEFINIDO"})
$buttonpyth3 = Add-Button -Control $panelDevelopment -Text " " -X ($cx_ar[7] -35) -Y ($cy_ar[7]) -Width 30 -Height 20 -ForeColor '#FFFFFF'; 
    $buttonpyth3.Add_Click({cuadroMensaje -Text "BOTON INDEFINIDO"})

#Elementos de Wep Browsers
$labelGPU = Add-Label -control $panelBrowser -Text " Development on Windows " -X 0 -Y 5 -Width $panel_width -Height 25 -ForeColor '#8E44AD' -Size 15
Add-Label-Clickeable -MiControl $panelDevelopment  -Texto "Windows Terminal" -X $cx_ar[0] -Y $cy_ar[0]
Add-Label-Clickeable -MiControl $panelDevelopment -Texto "Install Nerd Fornt" -X $cx_ar[1] -Y $cy_ar[1]
Add-Label-Clickeable -MiControl $panelDevelopment  -Texto "Git + GnuPG + SSH (Setup)" -X $cx_ar[2] -Y $cy_ar[2]

#Posicionamiento de los Paneles
ajustarPosicionPaneles -PanelesXColumna 6 -Paneles $panelNavegadores, $panelGpuCpuDrivers, $panelCompresor, $panelGaming, $panelStreaming, $panelComun , $panelAV , $panelEmuladores , $panelEditors , $paneFileCompression , $paneFileDocumet , $panelRemote , $panelSubsystem , $panelNetwork, $panelUICustomization , $panelDevelopment

#####POR LAS DUDAS#######
#$chBoxDiscord DISCORD
#chBoxUbiConnect UBISOFT CONNECT