#Esto es para que se ajusten la posicion de los paneles a cuanton miden. SOLO LLAMAR AL FINAL.
####RODRIGO Y JULIAN: TIENEN QUE HACER FUNCIONES DE LOS BOTONES.###########
Add-Type -Assembly System.Drawing
$paparrando="$PSScriptRoot\src\img\paparrando.png"
Add-Label -control $tab2Install -Text "Instalacion de software" -X 0 -Y 10 -Width ($formPrincipal.Width-50) -Height 50 -ForeColor '#f54242' -Size 30
Add-Label -control $tab2Install -Text "Boton = Desinstalar - Nombre = Instalar" -X 0 -Y 70 -Width ($formPrincipal.Width-50) -Height 30 -ForeColor '#ffffff' -Size 15


$buttonInstalUnin = Add-Button -Control $tab2Install -Text "ACTUALIZAR TODO" -X 412 -Y 100 -Width 225 -Height 30 -ForeColor '#00FF00'; $buttonInstalUnin.Add_Click({zVIVE})

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
#$panelStreaming = Add-Panel-Autosized -Control $tab2Install -X 0 -Y 0
$panelComun = Add-Panel-Autosized -Control $tab2Install -X 0 -Y 0
$panelAV = Add-Panel-Autosized -control $tab2Install -X 0 -Y 0
$panelEmuladores = Add-Panel-Autosized -control $tab2Install -X 0 -Y 0
$panelEditors = Add-Panel-Autosized -control $tab2Install -X 0 -Y 0
$paneFileDocumet = Add-Panel-Autosized -control $tab2Install -X 0 -Y 0
$panelRemote = Add-Panel-Autosized -control $tab2Install -X 0 -Y 0
$panelNetwork = Add-Panel-Autosized -control $tab2Install -X 0 -Y 0
$panelDevelopment = Add-Panel-Autosized -control $tab2Install -X 0 -Y 0
$panelBootable = Add-Panel-Autosized -control $tab2Install -X 0 -Y 0


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
$labelchrome = Add-Label-Clickeable -control $panelNavegadores -Text "Chrome" -X $cx_ar[0] -Y $cy_ar[0] -ForeColor '#FFFF66'
    $labelchrome.Add_Click({INSTALAR-PACK -Pack "Google.Chrome" })
$labelbrave = Add-Label-Clickeable -control $panelNavegadores -Text "Brave" -X $cx_ar[1] -Y $cy_ar[1] -ForeColor '#FFFF66'
    $labelbrave.Add_Click({INSTALAR-PACK -Pack "XP8C9QZMS2PC1T" })
$labelfirefox = Add-Label-Clickeable -control $panelNavegadores -Text "Firefox" -X $cx_ar[2] -Y $cy_ar[2] -ForeColor '#FFFF66'
    $labelfirefox.Add_Click({INSTALAR-PACK -Pack "9NZVDKPMR9RD" })
$labelopera = Add-Label-Clickeable -control $panelNavegadores -Text "Opera" -X $cx_ar[3] -Y $cy_ar[3] -ForeColor '#FFFF66'
    $labelopera.Add_Click({INSTALAR-PACK -Pack "Opera.Opera" })
$labeloperagx = Add-Label-Clickeable -control $panelNavegadores -Text "Opera GX" -X $cx_ar[4] -Y $cy_ar[4] -ForeColor '#FFFF66'
    $labeloperagx.Add_Click({INSTALAR-PACK -Pack "Opera.OperaGX" });

#Buttons de Navegadores
$buttonchrome = Add-ImageButton -Control $panelNavegadores -ImagePath "$global:imagenTroll" -X ($cx_ar[0] -35) -Y ($cy_ar[0]) -Width 30 -Height 20;
    $buttonchrome.Add_Click({DESINSTALAR-PACKS -Dpack "Google.Chrome";  });
$buttonbrave = Add-ImageButton -Control $panelNavegadores -ImagePath "$global:imagenTroll" -X ($cx_ar[1] -35) -Y ($cy_ar[1]) -Width 30 -Height 20;
    $buttonbrave.Add_Click({DESINSTALAR-PACKS -Dpack "XP8C9QZMS2PC1T";  }); 
$buttonfirefox = Add-ImageButton -Control $panelNavegadores -ImagePath "$global:imagenTroll" -X ($cx_ar[2] -35) -Y ($cy_ar[2]) -Width 30 -Height 20; 
    $buttonfirefox.Add_Click({DESINSTALAR-PACKS -Dpack "9NZVDKPMR9RD";  }); 
$buttonopera = Add-ImageButton -Control $panelNavegadores -ImagePath "$global:imagenTroll" -X ($cx_ar[3] -35) -Y ($cy_ar[3]) -Width 30 -Height 20;
    $buttonopera.Add_Click({DESINSTALAR-PACKS -Dpack "Opera.Opera";  }); 
$buttonoperagx = Add-ImageButton -Control $panelNavegadores -ImagePath "$global:imagenTroll" -X ($cx_ar[4] -35) -Y ($cy_ar[4]) -Width 30 -Height 20; 
    $buttonoperagx.Add_Click({DESINSTALAR-PACKS -Dpack "Opera.OperaGX";  }); 



#Elementos de paneles para los drivers
Add-Label -control $panelGpuCpuDrivers -Text "Driver de CPU/GPU" -X 0 -Y 5 -Width $panel_width -Height 25 -ForeColor '#8E44AD' -Size 15
$labelControladorAMD = Add-Label-Clickeable -control $panelGpuCpuDrivers -Text "Controlador AMD Ryzen Chipset" -X $cx_ar[0] -Y $cy_ar[0] -ForeColor '#FFFF66'
    $labelControladorAMD.Add_Click({ })
$labelNvidia = Add-Label-Clickeable -control $panelGpuCpuDrivers -Text "Nvidia Drivers" -X $cx_ar[1] -Y $cy_ar[1] -ForeColor '#FFFF66'
    $labelNvidia.Add_Click({INSTALAR-PACK -Pack "Nvidia.GeForceExperience" });

#Buttons para drivers
$buttonControladorAMD = Add-ImageButton -Control $panelGpuCpuDrivers -ImagePath "$global:imagenTroll" -X ($cx_ar[0] -35) -Y ($cy_ar[0]) -Width 30 -Height 20 -ForeColor '#FFFFFF'; 
    $buttonControladorAMD.Add_Click({ })
$buttonNvidia = Add-ImageButton -Control $panelGpuCpuDrivers -ImagePath "$global:imagenTroll" -X ($cx_ar[1] -35) -Y ($cy_ar[1]) -Width 30 -Height 20 -ForeColor '#FFFFFF'; 
    $buttonNvidia.Add_Click({DESINSTALAR-PACKS -Dpack "Nvidia.GeForceExperience";  })

#Labels para compresores
Add-Label -control $panelCompresor -Text "Programas de compresion" -X 0 -Y 5 -Width $panel_width -Height 25 -ForeColor '#8E44AD' -Size 15
$labelwinrar = Add-Label-Clickeable -control $panelCompresor -Text "Winrar (Version de Prueba)" -X $cx_ar[0] -Y $cy_ar[0] -ForeColor '#FFFF66'
    $labelwinrar.Add_Click({INSTALAR-PACK -Pack "RARLab.WinRAR" }) 
$label7z = Add-Label-Clickeable -control $panelCompresor -Text "7-Zip" -X $cx_ar[1] -Y $cy_ar[1] -ForeColor '#FFFF66'
    $label7z.Add_Click({INSTALAR-PACK -Pack "7zip.7zip" }) 

#Buttons para compresores
$buttonwinr = Add-ImageButton -Control $panelCompresor -ImagePath "$global:imagenTroll" -X ($cx_ar[0] -35) -Y ($cy_ar[0]) -Width 30 -Height 20 -ForeColor '#FFFFFF'; 
    $buttonwinr.Add_Click({DESINSTALAR-PACKS -Dpack "RARLab.WinRAR";  }) 
$button7z = Add-ImageButton -Control $panelCompresor -ImagePath "$global:imagenTroll" -X ($cx_ar[1] -35) -Y ($cy_ar[1]) -Width 30 -Height 20 -ForeColor '#FFFFFF'; 
    $button7z.Add_Click({DESINSTALAR-PACKS -Dpack "7zip.7zip";  }) 


#Label para gaming
Add-Label -control $panelGaming -Text "Gaming" -X 0 -Y 5 -Width $panel_width -Height 25 -ForeColor '#8E44AD' -Size 15
$labelgog = Add-Label-Clickeable -control $panelGaming -Text "GOG Galaxy " -X $cx_ar[0] -Y $cy_ar[0] -ForeColor '#FFFF66'
    $labelgog.Add_Click({INSTALAR-PACK -Pack "GOG.Galaxy" }) 
$labelepic = Add-Label-Clickeable -control $panelGaming -Text "Epic games Launcher" -X $cx_ar[1] -Y $cy_ar[1] -ForeColor '#FFFF66'
    $labelepic.Add_Click({INSTALAR-PACK -Pack "EpicGames.EpicGamesLauncher" }) 
$labelsteam = Add-Label-Clickeable -control $panelGaming -Text "Steam " -X $cx_ar[2] -Y $cy_ar[2] -ForeColor '#FFFF66'
    $labelsteam.Add_Click({INSTALAR-PACK -Pack "Valve.Steam" }) 
$labelubisoft = Add-Label-Clickeable -control $panelGaming -Text "Ubisofft Connct" -X $cx_ar[3] -Y $cy_ar[3] -ForeColor '#FFFF66'
    $labelubisoft.Add_Click({INSTALAR-PACK -Pack "Ubisoft.Connect" }) 
$labeleadesk = Add-Label-Clickeable -control $panelGaming -Text "Ea Desktop" -X $cx_ar[4] -Y $cy_ar[4] -ForeColor '#FFFF66'
    $labeleadesk.Add_Click({INSTALAR-PACK -Pack "ElectronicArts.EADesktop" }) 

#Buttons para gaming
$buttongog = Add-ImageButton -Control $panelGaming -ImagePath "$global:imagenTroll" -X ($cx_ar[0] -35) -Y ($cy_ar[0]) -Width 30 -Height 20 -ForeColor '#FFFFFF'; 
    $buttongog.Add_Click({DESINSTALAR-PACKS -Dpack "GOG.Galaxy";  }) 
$buttonepic = Add-ImageButton -Control $panelGaming -ImagePath "$global:imagenTroll" -X ($cx_ar[1] -35) -Y ($cy_ar[1]) -Width 30 -Height 20 -ForeColor '#FFFFFF';
    $buttonepic.Add_Click({DESINSTALAR-PACKS -Dpack "EpicGames.EpicGamesLauncher";  }) 
$buttonsteam = Add-ImageButton -Control $panelGaming -ImagePath "$global:imagenTroll" -X ($cx_ar[2] -35) -Y ($cy_ar[2]) -Width 30 -Height 20 -ForeColor '#FFFFFF'; 
    $buttonsteam.Add_Click({DESINSTALAR-PACKS -Dpack "Valve.Steam";  }) 
$buttonubisoft = Add-ImageButton -Control $panelGaming -ImagePath "$global:imagenTroll" -X ($cx_ar[3] -35) -Y ($cy_ar[3]) -Width 30 -Height 20 -ForeColor '#FFFFFF';
    $buttonubisoft.Add_Click({DESINSTALAR-PACKS -Dpack "Ubisoft.Connect";  }) 
$buttoneadesk = Add-ImageButton -Control $panelGaming -ImagePath "$global:imagenTroll" -X ($cx_ar[4] -35) -Y ($cy_ar[4]) -Width 30 -Height 20 -ForeColor '#FFFFFF'; 
    $buttoneadesk.Add_Click({DESINSTALAR-PACKS -Dpack "ElectronicArts.EADesktop";  }) 


#Elemento de streaming* services
#$labelGPU = Add-Label -control $panelStreaming -Text "Streaming Services" -X 0 -Y 5 -Width $panel_width -Height 25 -ForeColor '#8E44AD' -Size 15
#$labelAmazon = Add-Label-Clickeable -control $panelStreaming -Text "Amazon Prime Video" -X $cx_ar[0] -Y $cy_ar[0] -ForeColor '#FFFF66'
#    $labelAmazon.Add_Click({ })
#$labelDisney = Add-Label-Clickeable -control $panelStreaming -Text "Disney+" -X $cx_ar[1] -Y $cy_ar[1] -ForeColor '#FFFF66'
#    $labelDisney.Add_Click({ })
#$labelNetflix = Add-Label-Clickeable -control $panelStreaming -Text "Netflix" -X $cx_ar[2] -Y $cy_ar[2] -ForeColor '#FFFF66'
#    $labelNetflix.Add_Click({ })
#labelSpoti = Add-Label-Clickeable -control $panelStreaming -Text "Spotify" -X $cx_ar[3] -Y $cy_ar[3] -ForeColor '#FFFF66'
#    $labelSpoti.Add_Click({ })

#Buttons de Streaming services
#$buttonAmazon = Add-ImageButton -Control $panelStreaming -ImagePath "$global:imagenTroll" -X ($cx_ar[0] -35) -Y ($cy_ar[0]) -Width 30 -Height 20 -ForeColor '#FFFFFF'
#    $buttonAmazon.Add_Click({ })
#$buttonDisney = Add-ImageButton -Control $panelStreaming -ImagePath "$global:imagenTroll" -X ($cx_ar[1] -35) -Y ($cy_ar[1]) -Width 30 -Height 20 -ForeColor '#FFFFFF'
#    $buttonDisney.Add_Click({ })
#$buttonNetflix = Add-ImageButton -Control $panelStreaming -ImagePath "$global:imagenTroll" -X ($cx_ar[2] -35) -Y ($cy_ar[2]) -Width 30 -Height 20 -ForeColor '#FFFFFF'
#    $buttonNetflix.Add_Click({ })
#$buttonSpoti = Add-ImageButton -Control $panelStreaming -ImagePath "$global:imagenTroll" -X ($cx_ar[3] -35) -Y ($cy_ar[3]) -Width 30 -Height 20 -ForeColor '#FFFFFF'
#    $buttonSpoti.Add_Click({ })

#Labels de Comunicacion
Add-Label -control $panelComun -Text "Comunicacion" -X 0 -Y 5 -Width $panel_width -Height 25 -ForeColor '#8E44AD' -Size 15
$labeldisc = Add-Label-Clickeable -control $panelComun -Text "Discord " -X $cx_ar[0] -Y $cy_ar[0] -ForeColor '#FFFF66'
    $labeldisc.Add_Click({INSTALAR-PACK -Pack "Discord.Discord" }) 
$labelsky = Add-Label-Clickeable -control $panelComun -Text "Skype" -X $cx_ar[1] -Y $cy_ar[1] -ForeColor '#FFFF66'
    $labelsky.Add_Click({INSTALAR-PACK -Pack "9WZDNCRFJ364" }) 
$labelslack = Add-Label-Clickeable -control $panelComun -Text "Slack" -X $cx_ar[2] -Y $cy_ar[2] -ForeColor '#FFFF66'
    $labelslack.Add_Click({INSTALAR-PACK -Pack "9WZDNCRDK3WP" }) 
$labelwhats = Add-Label-Clickeable -control $panelComun -Text "WhatsApp Desktop" -X $cx_ar[3] -Y $cy_ar[3] -ForeColor '#FFFF66'
    $labelwhats.Add_Click({INSTALAR-PACK -Pack "WhatsApp.WhatsApp" })

#Buttons de Comunicacion
$buttondisc = Add-ImageButton -Control $panelComun -ImagePath "$global:imagenTroll" -X ($cx_ar[0] -35) -Y ($cy_ar[0]) -Width 30 -Height 20 -ForeColor '#FFFFFF'; 
    $buttondisc.Add_Click({DESINSTALAR-PACKS -Dpack "Discord.Discord";  }) 
$buttonsky = Add-ImageButton -Control $panelComun -ImagePath "$global:imagenTroll" -X ($cx_ar[1] -35) -Y ($cy_ar[1]) -Width 30 -Height 20 -ForeColor '#FFFFFF'; 
    $buttonsky.Add_Click({DESINSTALAR-PACKS -Dpack "9WZDNCRFJ364";  }) 
$buttonslack = Add-ImageButton -Control $panelComun -ImagePath "$global:imagenTroll" -X ($cx_ar[2] -35) -Y ($cy_ar[2]) -Width 30 -Height 20 -ForeColor '#FFFFFF'; 
    $buttonslack.Add_Click({DESINSTALAR-PACKS -Dpack "9WZDNCRDK3WP";  }) 
$buttonwhats = Add-ImageButton -Control $panelComun -ImagePath "$global:imagenTroll" -X ($cx_ar[3] -35) -Y ($cy_ar[3]) -Width 30 -Height 20 -ForeColor '#FFFFFF'; 
    $buttonwhats.Add_Click({DESINSTALAR-PACKS -Dpack "WhatsApp.WhatsApp";  }) 

#Labels de AV
Add-Label -control $panelAV -Text "Audio/Video" -X 0 -Y 5 -Width $panel_width -Height 25 -ForeColor '#8E44AD' -Size 15
$labelvlc = Add-Label-Clickeable -control $panelAV -Text "VLC" -X $cx_ar[0] -Y $cy_ar[0] -ForeColor '#FFFF66'
    $labelvlc.Add_Click({INSTALAR-PACK -Pack "XPDM1ZW6815MQM" })
$labelspoti = Add-Label-Clickeable -control $panelAV -Text "Spotify" -X $cx_ar[1] -Y $cy_ar[1] -ForeColor '#FFFF66'
    $labelspoti.Add_Click({INSTALAR-PACK -Pack "Spotify.Spotify" })
$labelaud = Add-Label-Clickeable -control $panelAV -Text "Audacity" -X $cx_ar[2] -Y $cy_ar[2] -ForeColor '#FFFF66'
    $labelaud.Add_Click({INSTALAR-PACK -Pack "XP8K0J757HHRDW" }) 
$labelmpc = Add-Label-Clickeable -control $panelAV -Text "MPC-HC" -X $cx_ar[3] -Y $cy_ar[3] -ForeColor '#FFFF66'
    $labelmpc.Add_Click({INSTALAR-PACK -Pack "clsid2.mpc-hc" })

#Buttons de AV
$buttonvlc = Add-ImageButton -Control $panelAV -ImagePath "$global:imagenTroll" -X ($cx_ar[0] -35) -Y ($cy_ar[0]) -Width 30 -Height 20 -ForeColor '#FFFFFF'; 
    $buttonvlc.Add_Click({DESINSTALAR-PACKS -Dpack "XPDM1ZW6815MQM";  }) 
$buttonspoti = Add-ImageButton -Control $panelAV -ImagePath "$global:imagenTroll" -X ($cx_ar[1] -35) -Y ($cy_ar[1]) -Width 30 -Height 20 -ForeColor '#FFFFFF'; 
    $buttonspoti.Add_Click({DESINSTALAR-PACKS -Dpack "Spotify.Spotify";  }) 
$buttonaud = Add-ImageButton -Control $panelAV -ImagePath "$global:imagenTroll" -X ($cx_ar[2] -35) -Y ($cy_ar[2]) -Width 30 -Height 20 -ForeColor '#FFFFFF'; 
    $buttonaud.Add_Click({DESINSTALAR-PACKS -Dpack "XP8K0J757HHRDW";  }) 
$buttonmpc = Add-ImageButton -Control $panelAV -ImagePath "$global:imagenTroll" -X ($cx_ar[3] -35) -Y ($cy_ar[3]) -Width 30 -Height 20 -ForeColor '#FFFFFF'; 
    $buttonmpc.Add_Click({DESINSTALAR-PACKS -Dpack "clsid2.mpc-hc";  })



#Labels de emuladores
Add-Label -control $panelEmuladores -Text "Emuladores " -X 0 -Y 5 -Width $panel_width -Height 25 -ForeColor '#8E44AD' -Size 15
$labelblue = Add-Label-Clickeable -Control $panelEmuladores -Text "Bluestacks " -X $cx_ar[0] -Y $cy_ar[0] -ForeColor '#FFFF66'
    $labelblue.Add_Click({INSTALAR-PACK -Pack "BlueStack.BlueStacks" })
$labelcemu = Add-Label-Clickeable -Control $panelEmuladores -Text "CEMU" -X $cx_ar[1] -Y $cy_ar[1] -ForeColor '#FFFF66'
    $labelcemu.Add_Click({INSTALAR-PACK -Pack "Cemu.Cemu" }) 
$labelryu = Add-Label-Clickeable -Control $panelEmuladores -Text "Ryujinx" -X $cx_ar[2] -Y $cy_ar[2] -ForeColor '#FFFF66'
    $labelryu.Add_Click({INSTALAR-PACK -Pack "Ryujinx.Ryujinx.Ava" }) 
$labeldol = Add-Label-Clickeable -Control $panelEmuladores -Text "Dolphin" -X $cx_ar[3] -Y $cy_ar[3] -ForeColor '#FFFF66'
    $labeldol.Add_Click({INSTALAR-PACK -Pack " DolphinEmulator.Dolphin" })
$labelyuzu = Add-Label-Clickeable -Control $panelEmuladores -Text "Yuzu" -X $cx_ar[4] -Y $cy_ar[4] -ForeColor '#FFFF66'
    $labelyuzu.Add_Click({INSTALAR-PACK -Pack "YuzuEmu.Yuzu.Mainline" }) 

#Buttons de emuladores
$buttonblue = Add-ImageButton -Control $panelEmuladores -ImagePath "$global:imagenTroll" -X ($cx_ar[0] -35) -Y ($cy_ar[0]) -Width 30 -Height 20 -ForeColor '#FFFFFF'; 
    $buttonblue.Add_Click({DESINSTALAR-PACKS -Dpack "BlueStack.BlueStacks";  })
$buttoncemu = Add-ImageButton -Control $panelEmuladores -ImagePath "$global:imagenTroll" -X ($cx_ar[1] -35) -Y ($cy_ar[1]) -Width 30 -Height 20 -ForeColor '#FFFFFF';
    $buttoncemu.Add_Click({DESINSTALAR-PACKS -Dpack "Cemu.Cemu";  }) 
$buttonryu = Add-ImageButton -Control $panelEmuladores -ImagePath "$global:imagenTroll" -X ($cx_ar[2] -35) -Y ($cy_ar[2]) -Width 30 -Height 20 -ForeColor '#FFFFFF'; 
    $buttonryu.Add_Click({DESINSTALAR-PACKS -Dpack "Ryujinx.Ryujinx.Ava";  }) 
$buttondol = Add-ImageButton -Control $panelEmuladores -ImagePath "$global:imagenTroll" -X ($cx_ar[3] -35) -Y ($cy_ar[3]) -Width 30 -Height 20 -ForeColor '#FFFFFF'; 
    $buttondol.Add_Click({DESINSTALAR-PACKS -Dpack " DolphinEmulator.Dolphin";  }) 
$buttonyuzu = Add-ImageButton -Control $panelEmuladores -ImagePath "$global:imagenTroll" -X ($cx_ar[4] -35) -Y ($cy_ar[4]) -Width 30 -Height 20 -ForeColor '#FFFFFF'; 
    $buttonyuzu.Add_Click({DESINSTALAR-PACKS -Dpack "YuzuEmu.Yuzu.Mainline";  }) 

    
#Labels de Editors/IDEs
Add-Label -control $panelEditors -Text "Editores" -X 0 -Y 5 -Width $panel_width -Height 25 -ForeColor '#8E44AD' -Size 15
$labelplusplus = Add-Label-Clickeable -Control $panelEditors -Text "Notepad++ " -X $cx_ar[0] -Y $cy_ar[0] -ForeColor '#FFFF66'
    $labelplusplus.Add_Click({INSTALAR-PACK -Pack "Notepad++.Notepad++" })
$labelVS2022 = Add-Label-Clickeable -Control $panelEditors -Text "Visual Studio 2022 Community" -X $cx_ar[1] -Y $cy_ar[1] -ForeColor '#FFFF66'
    $labelVS2022.Add_Click({INSTALAR-PACK -Pack "Microsoft.VisualStudio.2022.Community"  })
$labelVSC = Add-Label-Clickeable -Control $panelEditors -Text "Visual Studio Code" -X $cx_ar[2] -Y $cy_ar[2] -ForeColor '#FFFF66'
    $labelVSC.Add_Click({INSTALAR-PACK -Pack "Microsoft.VisualStudioCode" })
$labelGhub = Add-Label-Clickeable -Control $panelEditors -Text "GitHub" -X $cx_ar[3] -Y $cy_ar[3] -ForeColor '#FFFF66'
    $labelGhub.Add_Click({INSTALAR-PACK -Pack "GitHub.GitHubDesktop.Beta" })

#Buttons de Editors/IDEs
$buttonplusplus = Add-ImageButton -Control $panelEditors -ImagePath "$global:imagenTroll" -X ($cx_ar[0] -35) -Y ($cy_ar[0]) -Width 30 -Height 20 -ForeColor '#FFFFFF'; 
    $buttonplusplus.Add_Click({DESINSTALAR-PACKS -Dpack "Notepad++.Notepad++";  })
$buttonVS2022 = Add-ImageButton -Control $panelEditors -ImagePath "$global:imagenTroll" -X ($cx_ar[1] -35) -Y ($cy_ar[1]) -Width 30 -Height 20 -ForeColor '#FFFFFF';
    $buttonVS2022.Add_Click({DESINSTALAR-PACKS -Dpack "Microsoft.VisualStudio.2022.Community";  })
$buttonVSC = Add-ImageButton -Control $panelEditors -ImagePath "$global:imagenTroll" -X ($cx_ar[2] -35) -Y ($cy_ar[2]) -Width 30 -Height 20 -ForeColor '#FFFFFF'; 
    $buttonVSC.Add_Click({DESINSTALAR-PACKS -Dpack "Microsoft.VisualStudioCode";  })
$buttonGhub = Add-ImageButton -Control $panelEditors -ImagePath "$global:imagenTroll" -X ($cx_ar[3] -35) -Y ($cy_ar[3]) -Width 30 -Height 20 -ForeColor '#FFFFFF'; 
    $buttonGhub.Add_Click({DESINSTALAR-PACKS -Dpack "GitHub.GitHubDesktop.Beta";  })


#Labels de Documents Editor/Reader(s)
Add-Label -control $paneFileDocumet  -Text "Lector/Editor de Documentos" -X 0 -Y 5 -Width $panel_width -Height 25 -ForeColor '#8E44AD' -Size 15
$labelAdober = Add-Label-Clickeable -Control $paneFileDocumet -Text "Adobe Reader" -X $cx_ar[0] -Y $cy_ar[0] -ForeColor '#FFFF66'
    $labelAdober.Add_Click({INSTALAR-PACK -Pack "Adobe.Acrobat.Reader.64-bit" })
$labelOO = Add-Label-Clickeable -Control $paneFileDocumet -Text "LibreOffice (Desktop Editor)" -X $cx_ar[1] -Y $cy_ar[1] -ForeColor '#FFFF66'
    $labelOO.Add_Click({INSTALAR-PACK -Pack "TheDocumentFoundation.LibreOffice" })
$labelPDFCC = Add-Label-Clickeable -Control $paneFileDocumet -Text "PDF Creator/Converter" -X $cx_ar[2] -Y $cy_ar[2] -ForeColor '#FFFF66'
    $labelPDFCC.Add_Click({INSTALAR-PACK -Pack "pdfforge.PDFCreator" })
$labelb1 = Add-Label-Clickeable -Control $paneFileDocumet -Text "Open Office" -X $cx_ar[3] -Y $cy_ar[3] -ForeColor '#FFFF66'
    $labelb1.Add_Click({INSTALAR-PACK -Pack "Apache.OpenOffice" })


#Buttons de Documents Editor/Reader(s)
$buttonAdober = Add-ImageButton -Control $paneFileDocumet -ImagePath "$global:imagenTroll" -X ($cx_ar[0] -35) -Y ($cy_ar[0]) -Width 30 -Height 20 -ForeColor '#FFFFFF'; 
    $buttonAdober.Add_Click({DESINSTALAR-PACKS -Dpack "Adobe.Acrobat.Reader.64-bit";  })
$buttonOO = Add-ImageButton -Control $paneFileDocumet -ImagePath "$global:imagenTroll" -X ($cx_ar[1] -35) -Y ($cy_ar[1]) -Width 30 -Height 20 -ForeColor '#FFFFFF';
    $buttonOO.Add_Click({DESINSTALAR-PACKS -Dpack "TheDocumentFoundation.LibreOffice";  })
$buttonPDFCC = Add-ImageButton -Control $paneFileDocumet -ImagePath "$global:imagenTroll" -X ($cx_ar[2] -35) -Y ($cy_ar[2]) -Width 30 -Height 20 -ForeColor '#FFFFFF';
    $buttonPDFCC.Add_Click({DESINSTALAR-PACKS -Dpack "pdfforge.PDFCreator";  })
$buttonb1 = Add-ImageButton -Control $paneFileDocumet -ImagePath "$global:imagenTroll" -X ($cx_ar[3] -35) -Y ($cy_ar[3]) -Width 30 -Height 20 -ForeColor '#FFFFFF';
    $buttonb1.Add_Click({$labelb1.Add_Click({DESINSTALAR-PACKS -Dpack "Apache.OpenOffice"; unpackages})})



#Labels de Remote Connection
Add-Label -control $panelRemote -Text "Remote Connection" -X 0 -Y 5 -Width $panel_width -Height 25 -ForeColor '#8E44AD' -Size 15
$labelAnydesk = Add-Label-Clickeable -Control $panelRemote -Text "AnyDesk" -X $cx_ar[0] -Y $cy_ar[0] -ForeColor '#FFFF66'
    $labelAnydesk.Add_Click({INSTALAR-PACK -Pack "AnyDeskSoftwareGmbH.AnyDesk" })
$labelParsec = Add-Label-Clickeable -Control $panelRemote -Text "Parsec" -X $cx_ar[1] -Y $cy_ar[1] -ForeColor '#FFFF66'
    $labelParsec.Add_Click({INSTALAR-PACK -Pack "Parsec.Parsec" })
$labelScr = Add-Label-Clickeable -Control $panelRemote -Text "ScrCpy (Android)" -X $cx_ar[2] -Y $cy_ar[2] -ForeColor '#FFFF66'
    $labelScr.Add_Click({INSTALAR-PACK -Pack "Genymobile.scrcpy" })
$labelTV = Add-Label-Clickeable -Control $panelRemote -Text "Team Viewer" -X $cx_ar[3] -Y $cy_ar[3] -ForeColor '#FFFF66'
    $labelTV.Add_Click({INSTALAR-PACK -Pack "TeamViewer.TeamViewer" })

#Buttons de Documents Editor/Reader(s)
$buttonAnydesk = Add-ImageButton -Control $panelRemote -ImagePath "$global:imagenTroll" -X ($cx_ar[0] -35) -Y ($cy_ar[0]) -Width 30 -Height 20 -ForeColor '#FFFFFF'; 
    $buttonAnydesk.Add_Click({DESINSTALAR-PACKS -Dpack "AnyDeskSoftwareGmbH.AnyDesk";  })
$buttonParsec = Add-ImageButton -Control $panelRemote -ImagePath "$global:imagenTroll" -X ($cx_ar[1] -35) -Y ($cy_ar[1]) -Width 30 -Height 20 -ForeColor '#FFFFFF';
    $buttonParsec.Add_Click({DESINSTALAR-PACKS -Dpack "Parsec.Parsec";  })
$buttonScr = Add-ImageButton -Control $panelRemote -ImagePath "$global:imagenTroll" -X ($cx_ar[2] -35) -Y ($cy_ar[2]) -Width 30 -Height 20 -ForeColor '#FFFFFF';
    $buttonScr.Add_Click({DESINSTALAR-PACKS -Dpack "Genymobile.scrcpy";  })
$buttonTV = Add-ImageButton -Control $panelRemote -ImagePath "$global:imagenTroll" -X ($cx_ar[3] -35) -Y ($cy_ar[3]) -Width 30 -Height 20 -ForeColor '#FFFFFF';
    $buttonTV.Add_Click({DESINSTALAR-PACKS -Dpack "TeamViewer.TeamViewer";  })

#Estos paneles fueron sacados por su nivel de inutilidad
#Elementos de Torrent
#$labelGPU = Add-Label-Clickeable-Clickeable -control $panelTorrent -Text " Torrent " -X 0 -Y 5 -Width $panel_width -Height 25 -ForeColor '#8E44AD' -Size 15
#Add-Label-Clickeable -MiControl $panelTorrent  -Texto "qBittorrent " -X $cx_ar[0] -Y $cy_ar[0]
#Elementos Academic Research 
#$labelGPU = Add-Label-Clickeable-Clickeable -control $panelAcaemic -Text " Academic Research" -X 0 -Y 5 -Width $panel_width -Height 25 -ForeColor '#8E44AD' -Size 15
#Add-Label-Clickeable -MiControl $panelAcaemic -Texto "Zotero " -X $cx_ar[0] -Y $cy_ar[0]

#Labels de Bootable* USB
Add-Label -control $panelBootable -Text "Bootable USB" -X 0 -Y 5 -Width $panel_width -Height 25 -ForeColor '#8E44AD' -Size 15
$labelRufus = Add-Label-Clickeable -Control $panelBootable -Text "Rufus" -X $cx_ar[0] -Y $cy_ar[0] -ForeColor '#FFFF66'
    $labelRufus.Add_Click({INSTALAR-PACK -Pack "Rufus.Rufus" })


#Buttons de Bootable USB
$buttonRufus = Add-ImageButton -Control $panelBootable -ImagePath "$global:imagenTroll" -X ($cx_ar[0] -35) -Y ($cy_ar[0]) -Width 30 -Height 20 -ForeColor '#FFFFFF';
    $buttonRufus.Add_Click({DESINSTALAR-PACKS -Dpack "Rufus.Rufus" })

#Labels Virtual Machines
Add-Label -control $panelVirtual  -Text "Virtual Machines" -X 0 -Y 5 -Width $panel_width -Height 25 -ForeColor '#8E44AD' -Size 15
$labelOracleVM = Add-Label-Clickeable -Control $panelVirtual -Text "Oracle VM VirtualBox" -X $cx_ar[0] -Y $cy_ar[0] -ForeColor '#FFFF66'
    $labelOracleVM.Add_Click({INSTALAR-PACK -Pack "Oracle.VirtualBox" })
$labelQEMU = Add-Label-Clickeable -Control $panelVirtual -Text "QEMU" -X $cx_ar[1] -Y $cy_ar[1] -ForeColor '#FFFF66'
    $labelQEMU.Add_Click({INSTALAR-PACK -Pack "SoftwareFreedomConservancy.QEMU" })
$labelvmware = Add-Label-Clickeable -Control $panelVirtual -Text "VMware Workstation Player" -X $cx_ar[2] -Y $cy_ar[2] -ForeColor '#FFFF66'
    $labelvmware.Add_Click({INSTALAR-PACK -Pack "VMware.WorkstationPlayer" })

#Button Virtual Machines
$buttonOracleVM = Add-ImageButton -Control $panelVirtual -ImagePath "$global:imagenTroll" -X ($cx_ar[0] -35) -Y ($cy_ar[0]) -Width 30 -Height 20 -ForeColor '#FFFFFF'; 
    $buttonOracleVM.Add_Click({DESINSTALAR-PACKS -Dpack "VMware.WorkstationPlayer";  })
$buttonQEMU = Add-ImageButton -Control $panelVirtual -ImagePath "$global:imagenTroll" -X ($cx_ar[1] -35) -Y ($cy_ar[1]) -Width 30 -Height 20 -ForeColor '#FFFFFF';
    $buttonQEMU.Add_Click({DESINSTALAR-PACKS -Dpack "VMware.WorkstationPlayer";  })
$buttonvmware = Add-ImageButton -Control $panelVirtual -ImagePath "$global:imagenTroll" -X ($cx_ar[2] -35) -Y ($cy_ar[2]) -Width 30 -Height 20 -ForeColor '#FFFFFF';
    $buttonvmware.Add_Click({DESINSTALAR-PACKS -Dpack "VMware.WorkstationPlayer";  })

#ALERTA DE LINDO PEDAZZZZO DE CODIGO ABAJO 
#!!!SEGUIR NO TERMINAD
#Labels de Network Management
Add-Label -control $panelNetwork -Text " Network Manegement " -X 0 -Y 5 -Width $panel_width -Height 25 -ForeColor '#8E44AD' -Size 15
$labelhamachi = Add-Label-Clickeable -Control $panelNetwork -Text "Hamachi (LAN)" -X $cx_ar[0] -Y $cy_ar[0] -ForeColor '#FFFF66'
    $labelhamachi.Add_Click({ INSTALAR-PACK -Pack "LogMeIn.Hamachi"})
$labelputty = Add-Label-Clickeable -Control $panelNetwork -Text "PuTTY" -X $cx_ar[1] -Y $cy_ar[1] -ForeColor '#FFFF66'
    $labelputty.Add_Click({ INSTALAR-PACK -Pack "PuTTY.PuTTY" })
$labelwinscp = Add-Label-Clickeable -Control $panelNetwork -Text "WinSCP" -X $cx_ar[2] -Y $cy_ar[2] -ForeColor '#FFFF66'
    $labelwinscp.Add_Click({ INSTALAR-PACK -Pack "WinSCP.WinSCP" })
$labelwiresh = Add-Label-Clickeable -Control $panelNetwork -Text "Wireshark" -X $cx_ar[3] -Y $cy_ar[3] -ForeColor '#FFFF66'
    $labelwiresh.Add_Click({INSTALAR-PACK -Pack "WiresharkFoundation.Wireshark" })

#Buttons de Network Management
$buttonhamachi = Add-ImageButton -Control $panelNetwork -ImagePath "$global:imagenTroll" -X ($cx_ar[0] -35) -Y ($cy_ar[0]) -Width 30 -Height 20 -ForeColor '#FFFFFF'; 
    $buttonhamachi.Add_Click({DESINSTALAR-PACKS -Dpack "LogMeIn.Hamachi"})
$buttonputty = Add-ImageButton -Control $panelNetwork -ImagePath "$global:imagenTroll" -X ($cx_ar[1] -35) -Y ($cy_ar[1]) -Width 30 -Height 20 -ForeColor '#FFFFFF';
    $buttonputty.Add_Click({DESINSTALAR-PACKS -Dpack "PuTTY.PuTTY" })
$buttonwinscp = Add-ImageButton -Control $panelNetwork -ImagePath "$global:imagenTroll" -X ($cx_ar[2] -35) -Y ($cy_ar[2]) -Width 30 -Height 20 -ForeColor '#FFFFFF';
    $buttonwinscp.Add_Click({DESINSTALAR-PACKS -Dpack "WinSCP.WinSCP" })
$buttonwiresh = Add-ImageButton -Control $panelNetwork -ImagePath "$global:imagenTroll" -X ($cx_ar[3] -35) -Y ($cy_ar[3]) -Width 30 -Height 20 -ForeColor '#FFFFFF';
    $buttonwiresh.Add_Click({DESINSTALAR-PACKS -Dpack "WiresharkFoundation.Wireshark" })

#ALERTA DE LINDO PEDAZZZZO DE CODIGO ABAJO
#Labels de Development On Windows


Add-Label -control $panelDevelopment -Text "Development On Windows" -X 0 -Y 5 -Width $panel_width -Height 25 -ForeColor '#8E44AD' -Size 15
$labelmysql = Add-Label -Control $panelDevelopment -Text "MySQL" -X $cx_ar[0] -Y $cy_ar[0] -ForeColor '#FFFF66'
    $labelmysql.Add_Click({ INSTALAR-PACK -Pack "Oracle.MySQL"})
$labelnodejs = Add-Label -Control $panelDevelopment -Text "NodeJS" -X $cx_ar[1] -Y $cy_ar[1] -ForeColor '#FFFF66'
    $labelnodejs.Add_Click({INSTALAR-PACK -Pack "OpenJS.NodeJS" })
$labelQEMU = Add-Label -Control $panelDevelopment -Text "QEMU" -X $cx_ar[2] -Y $cy_ar[2] -ForeColor '#FFFF66'
    $labelQEMU.Add_Click({ INSTALAR-PACK -Pack "SoftwareFreedomConservancy.QEMU"})

#Button para Development On Windows

$buttonmysql = Add-ImageButton -Control $panelDevelopment -ImagePath "$global:imagenTroll" -X ($cx_ar[0] -35) -Y ($cy_ar[0]) -Width 30 -Height 20 -ForeColor '#FFFFFF'; 
    $buttonmysql.Add_Click({DESINSTALAR-PACKS -Dpack "Oracle.MySQL" })
$buttonnodejs = Add-ImageButton -Control $panelDevelopment -ImagePath "$global:imagenTroll" -X ($cx_ar[1] -35) -Y ($cy_ar[1]) -Width 30 -Height 20 -ForeColor '#FFFFFF'; 
    $buttonnodejs.Add_Click({DESINSTALAR-PACKS -Dpack "OpenJS.NodeJS" })
$buttonQEMU = Add-ImageButton -Control $panelDevelopment -ImagePath "$global:imagenTroll" -X ($cx_ar[2] -35) -Y ($cy_ar[2]) -Width 30 -Height 20 -ForeColor '#FFFFFF';
    $buttonQEMU.Add_Click({ DESINSTALAR-PACKS -Dpack "SoftwareFreedomConservancy.QEMU"})



#Posicionamiento de los Paneles
ajustarPosicionPaneles -PanelesXColumna 6 -Paneles $panelNavegadores, $panelGpuCpuDrivers, $panelCompresor, $panelGaming, $panelComun, $panelAV, $panelEmuladores, $panelEditors, $paneFileDocumet, $panelRemote, $panelNetwork, $panelDevelopment, $panelBootable
#####POR LAS DUDAS#######
#$panelStreaming