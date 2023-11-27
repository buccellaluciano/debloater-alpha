#Esto es para que se ajusten la posicion de los paneles a cuanton miden. SOLO LLAMAR AL FINAL.
####RODRIGO Y JULIAN: TIENEN QUE HACER FUNCIONES DE LOS BOTONES.###########
Add-Type -Assembly System.Drawing
$paparrando="$PSScriptRoot\src\img\paparrando.png"
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
$panelPlaceholder3 = Add-Panel-Autosized -Control $tab2Install -X 0 -Y 0
$panelComun = Add-Panel-Autosized -Control $tab2Install -X 0 -Y 0
$panelAV = Add-Panel-Autosized -control $tab2Install -X 0 -Y 0
$panelplaceholder6 = Add-Panel-Autosized -control $tab2Install -X 0 -Y 0
$panelEmuladores = Add-Panel-Autosized -control $tab2Install -X 0 -Y 0
$panelEditors = Add-Panel-Autosized -control $tab2Install -X 0 -Y 0
$paneFileCompression = Add-Panel-Autosized -control $tab2Install -X 0 -Y 0
$paneFileDocumet = Add-Panel-Autosized -control $tab2Install -X 0 -Y 0
$panelRemote = Add-Panel-Autosized -control $tab2Install -X 0 -Y 0
$panelTorrent = Add-Panel-Autosized -control $tab2Install -X 0 -Y 0
$panelAcaemic = Add-Panel-Autosized -control $tab2Install -X 0 -Y 0
$panelSubsystem = Add-Panel-Autosized -control $tab2Install -X 0 -Y 0
$panelNerwork = Add-Panel-Autosized -control $tab2Install -X 0 -Y 0
$panelUICustomization = Add-Panel-Autosized -control $tab2Install -X 0 -Y 0
$panelDevelopment = Add-Panel-Autosized -control $tab2Install -X 0 -Y 0


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
#Label de navegadores

Add-Label -control $panelNavegadores -Text "Navegadores" -X 0 -Y 5 -Width $panel_width -Height 25 -ForeColor '#8E44AD' -Size 15;
$labelchrome = Add-Label-Clickeable -control $panelNavegadores -Text "Chrome" -X $cx_ar[0] -Y $cy_ar[0] -ForeColor '#FFFF66'
    $labelchrome.Add_Click({$global:app="Google.Chrome"; ipackages})
$labelbrave = Add-Label-Clickeable -control $panelNavegadores -Text "Brave" -X $cx_ar[1] -Y $cy_ar[1] -ForeColor '#FFFF66'
    $labelbrave.Add_Click({$global:app="XP8C9QZMS2PC1T"; ipackages})
$labelfirefox = Add-Label-Clickeable -control $panelNavegadores -Text "Firefox" -X $cx_ar[2] -Y $cy_ar[2] -ForeColor '#FFFF66'
    $labelfirefox.Add_Click({$global:app="9NZVDKPMR9RD"; ipackages})
$labelopera = Add-Label-Clickeable -control $panelNavegadores -Text "Opera" -X $cx_ar[3] -Y $cy_ar[3] -ForeColor '#FFFF66'
    $labelopera.Add_Click({$global:app="Opera.Opera"; ipackages})
$labeloperagx = Add-Label-Clickeable -control $panelNavegadores -Text "Opera GX" -X $cx_ar[4] -Y $cy_ar[4] -ForeColor '#FFFF66'
    $buttonoperagx.Add_Click({$global:app="Opera.OperaGX"; ipackages});

#Buttons de navegadores
$buttonchrome = Add-ImageButton -Control $panelNavegadores -ImagePath "$global:imagenTroll" -X ($cx_ar[0] -35) -Y ($cy_ar[0]) -Width 30 -Height 20;
    $buttonchrome.Add_Click({$global:app="Google.Chrome"; upackages});
$buttonbrave = Add-ImageButton -Control $panelNavegadores -ImagePath "$global:imagenTroll" -X ($cx_ar[1] -35) -Y ($cy_ar[1]) -Width 30 -Height 20;
    $buttonbrave.Add_Click({$global:app="XP8C9QZMS2PC1T"; upackages}); 
$buttonfirefox = Add-ImageButton -Control $panelNavegadores -ImagePath "$global:imagenTroll" -X ($cx_ar[2] -35) -Y ($cy_ar[2]) -Width 30 -Height 20; 
    $buttonfirefox.Add_Click({$global:app="9NZVDKPMR9RD"; upackages}); 
$buttonopera = Add-ImageButton -Control $panelNavegadores -ImagePath "$global:imagenTroll" -X ($cx_ar[3] -35) -Y ($cy_ar[3]) -Width 30 -Height 20;
    $buttonopera.Add_Click({$global:app="Opera.Opera"; upackages}); 
$buttonoperagx = Add-ImageButton -Control $panelNavegadores -ImagePath "$global:imagenTroll" -X ($cx_ar[4] -35) -Y ($cy_ar[4]) -Width 30 -Height 20; 
    $buttonoperagx.Add_Click({$global:app="Opera.OperaGX"; upackages}); 



#Elementos de paneles para los drivers
$labelGPU = Add-Label -control $panelGpuCpuDrivers -Text "Driver de CPU/GPU" -X 0 -Y 5 -Width $panel_width -Height 25 -ForeColor '#8E44AD' -Size 15
Add-Label-Clickeable -MiControl $panelGpuCpuDrivers -Texto "Controlador AMD Ryzen Chipset" -X $cx_ar[0] -Y $cy_ar[0] -ForeColor '#FFFF66'

Add-Label-Clickeable -MiControl $panelGpuCpuDrivers -Texto "Nvidia Drivers" -X $cx_ar[1] -Y $cy_ar[1] -ForeColor '#FFFF66'

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


#Elemento de striming services
$labelGPU = Add-Label -control $panelPlaceholder3 -Text "Streaming Services" -X 0 -Y 5 -Width $panel_width -Height 25 -ForeColor '#8E44AD' -Size 15
Add-Label-Clickeable -MiControl $panelPlaceholder3 -Texto "Amazon Prime Video " -X $cx_ar[0] -Y $cy_ar[0]
Add-Label-Clickeable -MiControl $panelPlaceholder3 -Texto "Disney+" -X $cx_ar[1] -Y $cy_ar[1]
Add-Label-Clickeable -MiControl $panelPlaceholder3 -Texto "Netflix " -X $cx_ar[2] -Y $cy_ar[2]
Add-Label-Clickeable -MiControl $panelPlaceholder3 -Texto "Spotify" -X $cx_ar[3] -Y $cy_ar[3]

#Labels de comunicacion

$labelComun = Add-Label -control $panelComun -Text "Comunicacion" -X 0 -Y 5 -Width $panel_width -Height 25 -ForeColor '#8E44AD' -Size 15
$labeldisc = Add-Label -control $panelComun -Text "Discord " -X $cx_ar[0] -Y $cy_ar[0] -ForeColor '#FFFF66'
    $labeldisc.Add_Click({$global:app="Discord.Discord"; ipackages}) 
$labelsky = Add-Label -control $panelComun -Text "Skype" -X $cx_ar[1] -Y $cy_ar[1] -ForeColor '#FFFF66'
    $labelsky.Add_Click({$global:app="9WZDNCRFJ364"; ipackages}) 
$labelslack = Add-Label -control $panelComun -Text "Slack" -X $cx_ar[2] -Y $cy_ar[2] -ForeColor '#FFFF66'
    $labelslack.Add_Click({$global:app="9WZDNCRDK3WP"; ipackages}) 
$labelwhats = Add-Label -control $panelComun -Text "WhatsApp Desktop" -X $cx_ar[3] -Y $cy_ar[3] -ForeColor '#FFFF66'
    $labelwhats.Add_Click({$global:app="WhatsApp.WhatsApp"; ipackages})

#Buttons de comuniacion

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


#Elemento de Edetors/DIEs
$labelGPU = Add-Label -control $panelEditors -Text "Jetbreins Toolbox " -X 0 -Y 5 -Width $panel_width -Height 25 -ForeColor '#8E44AD' -Size 15
Add-Label-Clickeable -MiControl $panelEditors -Texto "Notepad++" -X $cx_ar[0] -Y $cy_ar[0]
Add-Label-Clickeable -MiControl $panelEditors -Texto "Visual Studio 2022 Community" -X $cx_ar[1] -Y $cy_ar[1]
Add-Label-Clickeable -MiControl $panelEditors -Texto "VS Code" -X $cx_ar[2] -Y $cy_ar[2]
Add-Label-Clickeable -MiControl $panelEditors -Texto "VS Codium" -X $cx_ar[3] -Y $cy_ar[3]


#Elemento de File Compression
$labelGPU = Add-Label -control $paneFileCompression -Text "File Compression " -X 0 -Y 5 -Width $panel_width -Height 25 -ForeColor '#8E44AD' -Size 15
Add-Label-Clickeable -MiControl $paneFileCompression -Texto "7-Zip" -X $cx_ar[0] -Y $cy_ar[0]
Add-Label-Clickeable -MiControl $paneFileCompression -Texto "WinRAR (trial)" -X $cx_ar[1] -Y $cy_ar[1]

#Elemento de Documentos Eitor/Readers
$labelGPU = Add-Label -control $paneFileDocumet  -Text " Documentos Eitor/Readers" -X 0 -Y 5 -Width $panel_width -Height 25 -ForeColor '#8E44AD' -Size 15
Add-Label-Clickeable -MiControl $paneFileDocumet  -Texto "Adobe Reader" -X $cx_ar[0] -Y $cy_ar[0]
Add-Label-Clickeable -MiControl $paneFileDocumet  -Texto "ONLYOFICE DesktopEditors" -X $cx_ar[1] -Y $cy_ar[1]
Add-Label-Clickeable -MiControl $paneFileDocumet  -Texto "PDFCreator(PDF Converter)" -X $cx_ar[2] -Y $cy_ar[2]
Add-Label-Clickeable -MiControl $paneFileDocumet  -Texto "Power Bl" -X $cx_ar[3] -Y $cy_ar[3]
Add-Label-Clickeable -MiControl $paneFileDocumet -Texto "Sumatra PDF" -X $cx_ar[4] -Y $cy_ar[4]

#Elementos de Remote connection
$labelGPU = Add-Label -control $panelRemote -Text " Remote connection" -X 0 -Y 5 -Width $panel_width -Height 25 -ForeColor '#8E44AD' -Size 15
Add-Label-Clickeable -MiControl $panelRemote  -Texto "AnyDesk" -X $cx_ar[0] -Y $cy_ar[0]
Add-Label-Clickeable -MiControl $panelRemote  -Texto "Parsec" -X $cx_ar[1] -Y $cy_ar[1]
Add-Label-Clickeable -MiControl $panelRemote  -Texto "ScrCpy(Android)" -X $cx_ar[2] -Y $cy_ar[2]
Add-Label-Clickeable -MiControl $panelRemote  -Texto "Team Viewer" -X $cx_ar[3] -Y $cy_ar[3]

#Elementos de Torrent
$labelGPU = Add-Label -control $panelTorrent -Text " Torrent " -X 0 -Y 5 -Width $panel_width -Height 25 -ForeColor '#8E44AD' -Size 15
Add-Label-Clickeable -MiControl $panelTorrent  -Texto "qBittorrent " -X $cx_ar[0] -Y $cy_ar[0]

#Elementos Academic Research 

$labelGPU = Add-Label -control $panelAcaemic -Text " Academic Research" -X 0 -Y 5 -Width $panel_width -Height 25 -ForeColor '#8E44AD' -Size 15
Add-Label-Clickeable -MiControl $panelAcaemic -Texto "Zotero " -X $cx_ar[0] -Y $cy_ar[0]

#Elementos Bootale USB
$labelGPU = Add-Label -control $panelBootale -Text " Bootale USB" -X 0 -Y 5 -Width $panel_width -Height 25 -ForeColor '#8E44AD' -Size 15
Add-Label-Clickeable -MiControl $panelBootale -Texto "Etcher " -X $cx_ar[0] -Y $cy_ar[0]
Add-Label-Clickeable -MiControl $panelBootale -Texto "Rufus" -X $cx_ar[1] -Y $cy_ar[1]
Add-Label-Clickeable -MiControl $panelBootale -Texto "Ventoy " -X $cx_ar[2] -Y $cy_ar[2]

#Elementos Virtual Machines
$labelGPU = Add-Label -control $panelVirtual  -Text " Virtual Machines " -X 0 -Y 5 -Width $panel_width -Height 25 -ForeColor '#8E44AD' -Size 15
Add-Label-Clickeable -MiControl $panelVirtual -Texto "oracie VM VirtualBox " -X $cx_ar[0] -Y $cy_ar[0]
Add-Label-Clickeable -MiControl $panelVirtual -Texto "QEMU" -X $cx_ar[1] -Y $cy_ar[1]
Add-Label-Clickeable -MiControl $panelVirtual -Texto "Vmware Warkstation Player " -X $cx_ar[2] -Y $cy_ar[2]

#Elementos Windows Subsystem For Linux

$labelGPU = Add-Label -control $panelSubsystem -Text " Windows Subsystem For Linux " -X 0 -Y 5 -Width $panel_width -Height 25 -ForeColor '#8E44AD' -Size 15
Add-Label-Clickeable -MiControl $panelSubsystem  -Texto "Install WSL" -X $cx_ar[0] -Y $cy_ar[0]
Add-Label-Clickeable -MiControl $panelSubsystem -Texto "ArchWSL(x64)" -X $cx_ar[1] -Y $cy_ar[1]
Add-Label-Clickeable -MiControl $panelSubsystem  -Texto "Debian GNU/Linix " -X $cx_ar[2] -Y $cy_ar[2]
Add-Label-Clickeable -MiControl $panelSubsystem  -Texto "Kali Linux Polling " -X $cx_ar[3] -Y $cy_ar[3]
Add-Label-Clickeable -MiControl $panelSubsystem  -Texto "Open SUSE 42" -X $cx_ar[4] -Y $cy_ar[4]
Add-Label-Clickeable -MiControl $panelSubsystem  -Texto "SLES v12" -X $cx_ar[5] -Y $cy_ar[5]
Add-Label-Clickeable -MiControl $panelSubsystem  -Texto "Ubuntu " -X $cx_ar[6] -Y $cy_ar[6]
Add-Label-Clickeable -MiControl $panelSubsystem  -Texto "Ubuntu 18.04 LTS" -X $cx_ar[7] -Y $cy_ar[7]
Add-Label-Clickeable -MiControl $panelSubsystem  -Texto "Ubuntu 20.04 LTS" -X $cx_ar[8] -Y $cy_ar[8]


#Elemento de Network Manegement
$labelGPU = Add-Label -control $panelNerwork -Text " Network Manegement " -X 0 -Y 5 -Width $panel_width -Height 25 -ForeColor '#8E44AD' -Size 15
Add-Label-Clickeable -MiControl $panelNerwork  -Texto "Homochi (LAN)" -X $cx_ar[0] -Y $cy_ar[0]
Add-Label-Clickeable -MiControl $panelNerwork -Texto "PuTTY" -X $cx_ar[1] -Y $cy_ar[1]
Add-Label-Clickeable -MiControl $panelNerwork  -Texto "Radmi vpn (LAN) " -X $cx_ar[2] -Y $cy_ar[2]
Add-Label-Clickeable -MiControl $panelNerwork  -Texto "WinSCP " -X $cx_ar[3] -Y $cy_ar[3]
Add-Label-Clickeable -MiControl $panelNerwork  -Texto "Wireshonrk " -X $cx_ar[4] -Y $cy_ar[4]


#Elementos de UI Customizacion

$labelGPU = Add-Label -control $panelNerwork -Text " UI Customizacion " -X 0 -Y 5 -Width $panel_width -Height 25 -ForeColor '#8E44AD' -Size 15
Add-Label-Clickeable -MiControl $panelNerwork  -Texto "RoundedTB" -X $cx_ar[0] -Y $cy_ar[0]
Add-Label-Clickeable -MiControl $panelNerwork -Texto "TranslucetTB" -X $cx_ar[1] -Y $cy_ar[1]

#Elementos de Development on Windows

$labelGPU = Add-Label -control $panelDevelopment -Text " Development on Windows " -X 0 -Y 5 -Width $panel_width -Height 25 -ForeColor '#8E44AD' -Size 15
Add-Label-Clickeable -MiControl $panelDevelopment  -Texto "Windows Terminal" -X $cx_ar[0] -Y $cy_ar[0]
Add-Label-Clickeable -MiControl $panelDevelopment -Texto "Install Nerd Fornt" -X $cx_ar[1] -Y $cy_ar[1]
Add-Label-Clickeable -MiControl $panelDevelopment  -Texto "Git + GnuPG + SSH (Setup)" -X $cx_ar[2] -Y $cy_ar[2]
Add-Label-Clickeable -MiControl $panelDevelopment -Texto "Android Debug Bridge (ADB)" -X $cx_ar[3] -Y $cy_ar[3]
Add-Label-Clickeable -MiControl $panelDevelopment  -Texto "Android Studio" -X $cx_ar[4] -Y $cy_ar[4]
Add-Label-Clickeable -MiControl $panelDevelopment -Texto "Docker Desktop" -X $cx_ar[5] -Y $cy_ar[5]
Add-Label-Clickeable -MiControl $panelDevelopment -Texto "Insomnio" -X $cx_ar[6] -Y $cy_ar[6]
Add-Label-Clickeable -MiControl $panelDevelopment -Texto "JAVA- Adoptium JDK 8/11/18" -X $cx_ar[7] -Y $cy_ar[7]
Add-Label-Clickeable -MiControl $panelDevelopment -Texto "Java- Oracie JRE" -X $cx_ar[8] -Y $cy_ar[8]
Add-Label-Clickeable -MiControl $panelDevelopment -Texto "MYSQL" -X $cx_ar[9] -Y $cy_ar[9]
Add-Label-Clickeable -MiControl $panelDevelopment -Texto "NodeJS" -X $cx_ar[10] -Y $cy_ar[10]
Add-Label-Clickeable -MiControl $panelDevelopment -Texto "NodeJS LTS" -X $cx_ar[11] -Y $cy_ar[11]
Add-Label-Clickeable -MiControl $panelDevelopment -Texto "PostgreSQL" -X $cx_ar[12] -Y $cy_ar[12]
Add-Label-Clickeable -MiControl $panelDevelopment -Texto "Python 3" -X $cx_ar[13] -Y $cy_ar[13]
Add-Label-Clickeable -MiControl $panelDevelopment -Texto "Python- Anaconda3" -X $cx_ar[14] -Y $cy_ar[14]
Add-Label-Clickeable -MiControl $panelDevelopment -Texto "Ruby" -X $cx_ar[15] -Y $cy_ar[15]
Add-Label-Clickeable -MiControl $panelDevelopment -Texto "Ruby(MSYS2)" -X $cx_ar[16] -Y $cy_ar[16]
Add-Label-Clickeable -MiControl $panelDevelopment -Texto "Rust (GNU)" -X $cx_ar[17] -Y $cy_ar[17]
Add-Label-Clickeable -MiControl $panelDevelopment -Texto "Rust (MSVC) " -X $cx_ar[18] -Y $cy_ar[18]

#Elementos de Wep Browsers

$labelGPU = Add-Label -control $panelBrowser -Text " Development on Windows " -X 0 -Y 5 -Width $panel_width -Height 25 -ForeColor '#8E44AD' -Size 15
Add-Label-Clickeable -MiControl $panelDevelopment  -Texto "Windows Terminal" -X $cx_ar[0] -Y $cy_ar[0]
Add-Label-Clickeable -MiControl $panelDevelopment -Texto "Install Nerd Fornt" -X $cx_ar[1] -Y $cy_ar[1]
Add-Label-Clickeable -MiControl $panelDevelopment  -Texto "Git + GnuPG + SSH (Setup)" -X $cx_ar[2] -Y $cy_ar[2]





ajustarPosicionPaneles -Paneles $panelNavegadores, $panelGpuCpuDrivers, $panelCompresor, $panelGaming, $panelPlaceholder3, $panelComun , $panelAV , $panelplaceholder6 , $panelEmuladores , $panelEditors , $paneFileCompression , $paneFileDocumet , $panelRemote , $panelTorrent , $panelAcaemic , $panelSubsystem , $panelNerwork, $panelUICustomization , $panelDevelopment

#####POR LAS DUDAS#######
#$chBoxDiscord DISCORD
#chBoxUbiConnect UBISOFT CONNECT