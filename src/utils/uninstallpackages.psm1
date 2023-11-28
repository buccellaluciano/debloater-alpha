function DESINSTALAR-PACKS {
    param (
        [string]$Dpack
    )

    $apps = @("List", "of", "installed", "apps")  # Replace this with your actual list of installed apps
    $j = 0

    Write-Host ("$Dpack")
    foreach ($i in $apps) {
        $j ++
    if ($j -ne $apps.length){
        if ($Dpack -eq $i){
            Write-Host ("$Dpack")
            $appinfo=Get-AppxPackage -Name $Dpack | Format-List -Property *
            if ($appinfo -ne $null){
                Get-AppxPackage -Name $Dpack -AllUsers | Remove-AppxPackage
                $Result=  Add-Type -AssemblyName PresentationCore,PresentationFramework
                $Result = [System.Windows.MessageBox]::Show("Paquete $Dpack correctamente desinstalado con GetAppx.","Desinstalado","Ok")
            }
        }
    }
    else {
        Write-Warning ("El programa no esta instalado o no se reconoce con Get-Appx, probando con winget...")
        try {
            WRITE-HOST "$Dpack"
            $Dpack = $Dpack.Trim("-Dpack")
            $uninstall ="winget uninstall $Dpack"
            Invoke-Expression -Command $uninstall
            $Result=  Add-Type -AssemblyName PresentationCore,PresentationFramework
            $Result = [System.Windows.MessageBox]::Show("Paquete $Dpack correctamente desinstalado con Winget.","Desinstalado","Ok")

        }
        catch {
            $Result=  Add-Type -AssemblyName PresentationCore,PresentationFramework
            $Result = [System.Windows.MessageBox]::Show("El paquete no se pudo desinstalar.","Error","Ok")
        }
}
        
    }              

    if ($global:removebloatware -eq 1) {
        foreach ($line in $apps) {
            Get-AppxPackage -Name $line -AllUsers | Remove-AppxPackage
        }
    }
}

    $apps = @(
    "*Clipchamp.Clipchamp*"
    "*Microsoft.3DBuilder*"
    "*Microsoft.549981C3F5F10*"   #Cortana app
    "*Microsoft.BingFinance*"
    "*Microsoft.BingFoodAndDrink*"            
    "*Microsoft.BingHealthAndFitness*"         
    "*Microsoft.BingNews*"
    "*Microsoft.BingSports*"
    "*Microsoft.BingTranslator*"
    "*Microsoft.BingTravel*" 
    "*Microsoft.BingWeather*"
    "*Microsoft.Getstarted*"   # Cannot be uninstalled in Windows 11
    "*Microsoft.Messaging*"
    "*Microsoft.Microsoft3DViewer*"
    "*Microsoft.MicrosoftOfficeHub*"
    "*Microsoft.MicrosoftPowerBIForWindows*"
    "*Microsoft.MicrosoftSolitaireCollection*"
    "*Microsoft.MicrosoftStickyNotes*"
    "*Microsoft.MixedReality.Portal*"
    "*Microsoft.NetworkSpeedTest*"
    "*Microsoft.News*"
    "*Microsoft.Office.OneNote*"
    "*Microsoft.Office.Sway*"
    "*Microsoft.OneConnect*"
    "*Microsoft.Print3D*"
    "*Microsoft.SkypeApp*"
    "*Microsoft.Todos*"
    "*Microsoft.WindowsAlarms*"
    "*Microsoft.WindowsFeedbackHub*"
    "*Microsoft.WindowsMaps*"
    "*Microsoft.WindowsSoundRecorder*"
    "*Microsoft.XboxApp*"   # Old Xbox Console Companion App, no longer supported
    "*Microsoft.ZuneVideo*"
    "*MicrosoftCorporationII.MicrosoftFamily*"   # Family Safety App
    "*MicrosoftTeams*"   # Only removes the personal version (MS Store), does not remove business/enterprise version of teams
    
    "*ACGMediaPlayer*"
    "*ActiproSoftwareLLC*"
    "*AdobeSystemsIncorporated.AdobePhotoshopExpress*"
    "*Amazon.com.Amazon*"
    "*AmazonVideo.PrimeVideo*"
    "*Asphalt8Airborne*" 
    "*AutodeskSketchBook*"
    "*CaesarsSlotsFreeCasino*"
    "*COOKINGFEVER*"
    "*CyberLinkMediaSuiteEssentials*"
    "*DisneyMagicKingdoms*"
    "*Disney*"
    "*Dolby*"
    "*DrawboardPDF*"
    "*Duolingo-LearnLanguagesforFree*"
    "*EclipseManager*"
    "*Facebook*"
    "*FarmVille2CountryEscape*"
    "*fitbit*"
    "*Flipboard*"
    "*HiddenCity*"
    "*HULULLC.HULUPLUS*"
    "*iHeartRadio*"
    "*Instagram*"
    "*king.com.BubbleWitch3Saga*"
    "*king.com.CandyCrushSaga*"
    "*king.com.CandyCrushSodaSaga*"
    "*LinkedInforWindows*"
    "*MarchofEmpires*"
    "*Netflix*"
    "*NYTCrossword*"
    "*OneCalendar*"
    "*PandoraMediaInc*"
    "*PhototasticCollage*"
    "*PicsArt-PhotoStudio*"
    "*Plex*"
    "*PolarrPhotoEditorAcademicEdition*"
    "*Royal Revolt*"
    "*Shazam*"
    "*Sidia.LiveWallpaper*"
    "*SlingTV*"
    "*Speed Test*"
    "*Spotify*"
    "*TikTok*"
    "*TuneInRadio*"
    "*Twitter*"
    "*Viber*"
    "*WinZipUniversal*"
    "*Wunderlist*"
    "*XING*"
    # The apps below this line will NOT be uninstalled. If you wish to REMOVE any of the apps below 
    #  simply remove the # character in front of the specific app.
    #
    "*Microsoft.GetHelp*"                      # Required for some Windows 11 Troubleshooters
    "*Microsoft.MSPaint*"                      # Paint 3D
    "*Microsoft.Paint*"                        # Classic Paint
    "*Microsoft.PowerAutomateDesktop*"
    "*Microsoft.RemoteDesktop*"
    "*Microsoft.ScreenSketch*"                 # Snipping Tool
    "*Microsoft.Whiteboard*"                   # Only preinstalled on devices with touchscreen and/or pen support
    "*Microsoft.Windows.Photos*"
    "*Microsoft.WindowsCalculator*"
    "*Microsoft.WindowsCamera*"
    "*Microsoft.WindowsStore*"                 # Microsoft Store, WARNING: This app cannot be reinstalled!
    "*Microsoft.WindowsTerminal*"              # New default terminal app in windows 11
    "*Microsoft.Xbox.TCUI*"                    # UI framework, seems to be required for MS store, photos and certain games
    "*Microsoft.XboxIdentityProvider*"         # Xbox sign-in framework, required for some games
    "*Microsoft.XboxSpeechToTextOverlay*"      # Might be required for some games, WARNING: This app cannot be reinstalled!
    "*Microsoft.YourPhone*"                    # Phone link
    "*Microsoft.ZuneMusic*"                    # Modern Media Player
    )