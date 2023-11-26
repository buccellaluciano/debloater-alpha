$adminCheck = ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")

if (-not $adminCheck) {
    # Si no se están ejecutando con privilegios de administrador, relanza el script con privilegios elevados

    # Crea un objeto ProcessStartInfo para configurar la ejecución con privilegios elevados
    $startInfo = New-Object System.Diagnostics.ProcessStartInfo
    $startInfo.FileName = "powershell"
    $startInfo.Arguments = "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`""
    $startInfo.Verb = "runas"  # Esto solicitará permisos elevados

    # Crea un objeto Process y lo inicia
    $process = New-Object System.Diagnostics.Process
    $process.StartInfo = $startInfo
    $process.Start()

    # Sale del script actual
    Exit
}



Add-Type -AssemblyName System.Windows.Forms

$formPrincipal = New-Object System.Windows.Forms.Form
$formPrincipal.Text = 'Super Debloater!'
$formPrincipal.Size = New-Object System.Drawing.Size(800,600)
$formPrincipal.StartPosition = 'CenterScreen'

$pwpath = "C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe"
$expath= $MyInvocation.MyCommand.Definition
$exname = $MyInvocation.MyCommand.Name
function openscript {
    $defpath = $expath.Replace("$exname", "$script")
    Start-Process -FilePath $pwpath -ArgumentList $defpath
}

$button = New-Object System.Windows.Forms.Button
$Button.Text = "nachopolis"
$button.Location = New-Object System.Drawing.Point(400, 300)
$Button.Add_Click({
        $oscript = "debloater.ps1"
        openscript
})
$formPrincipal.Controls.Add($button)

function upackages {
    $j
    foreach ($i in $apps) {
        $j ++
        
    if ($j -ne $apps.length){
        if ($app -eq $i){
            $app=$i
            Write-Host ("$app")
            $appinfo=Get-AppxPackage -Name $app | Format-List -Property *
            if ($appinfo -ne $null){
                Get-AppxPackage -Name $app -AllUsers | Remove-AppxPackage
            }
        }
    }
    else {
        Write-Warning ("El programa no esta instalado o no se reconoce con Get-Appx, probando con winget...")
        try {
            $app = $app.Trim('*')
            $uninstall ="winget uninstall $app"
            Invoke-Expression -Command $uninstall
        }
        catch {
            Write-Host "Se produjo un error: $_.Exception.Message"
        }
}
        
    }              
}

$button = New-Object System.Windows.Forms.Button
$Button.Text = "JUAN desintalador"
$button.Location = New-Object System.Drawing.Point(350, 250)
$Button.Add_Click({
    $app = "XP8C9QZMS2PC1T"
        upackages
})
$formPrincipal.Controls.Add($button)


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

    $gamingapps =@(
    # The apps below will NOT be uninstalled unless selected during the custom setup selection or when
    #  launching the script with the '-RemoveGamingApps' parameter. 
    "*Microsoft.GamingApp*"                    # Modern Xbox Gaming App, required for installing some PC games
    "*Microsoft.XboxGameOverlay*"               # Game overlay, required/useful for some games
    "*Microsoft.XboxGamingOverlay*"            # Game overlay, required/useful for some games)
    )

    
    
    $regname =@("$text")
    function Changeregs {
    
    foreach ($e in $regname){
        $regname+=$text
        $enabled
        $regpath = $expath.Replace("$exname","src\regfiles\$regname")
        $lines = Get-Content -Path $regpath
        Write-Host ("$regpath")
        $j
        foreach ($i in $lines){
            $j++
            if ($j -eq 1) 
            {
                $regroute=$i
            }
            if ($j -eq 2){
                $name=$i
            }

        }
        $valor =Get-ItemPropertyValue -Path $regroute -Name $name
    
        if ($valor-eq 0){
            $value=1
        }if ($valor -eq 1){
            $value=0 
    
        }
        Write-Host ("$valor")
        Set-ItemProperty -Path "$regroute" -Name "$name" -Value "$value" -ErrorAction SilentlyContinue
        
    }
    
}
    
    $button = New-Object System.Windows.Forms.Button
    $Button.Text = "JUAN"
    $button.Location = New-Object System.Drawing.Point(650, 450)
    $Button.Add_Click({
        $app = "XP8C9QZMS2PC1T"
        ipackages
    })


    function ipackages {
        $defaultpack=0
        $applistpath = $expath.Replace("$exname","\src\apps\defaultapps.txt")
        $app
        $lines = Get-Content -Path $applistpath
        if ($defaultpack -eq 1){
        foreach ($line in $lines){
            $app=$line
            Write-Host ("$app")
            $install ="winget install $app --accept-source-agreements --accept-package-agreements"
            Invoke-Expression -Command $install
        }
        $install ="winget install $app --accept-source-agreements --accept-package-agreements"
        Invoke-Expression -Command $install
    }
        $app
        $install ="winget install $app --accept-source-agreements --accept-package-agreements"
        Invoke-Expression -Command $install
    }
    $formPrincipal.Controls.Add($button)

    $checkBoxbrave = New-Object System.Windows.Forms.CheckBox
    $checkBoxbrave.Text = "Brave"
    $checkBoxbrave.Location = New-Object System.Drawing.Point(300,100)
    if ($checkBoxbrave.Checked -eq $true){
            
            #$selectedapps+=({$sp="1XP8C9QZMS2PC1T"})
        }
        $formPrincipal.Controls.Add($checkBoxbrave)

    $button = New-Object System.Windows.Forms.Button
    $Button.Text = "JUAN SUPER PRO"
    $button.Location = New-Object System.Drawing.Point(540, 330)
    $Button.Add_Click({Savechanges})
    $formPrincipal.Controls.Add($button)

    #
    #function Savechanges {
        #$save = $expath.Replace("$exname","src\save.txt")
        #$savedata
        #$lines = Get-Content -Path $save
        #Write-Host ("$save")
        #$dollar="$"
        
            
        #if ($cbox.Contains("1")){
            #$out=$cbox.Trim('1')
            #"$out"| Out-File -FilePath $save -Force -Append
            #rite-Host ("$line")
        #}  
        
        #foreach ($line in $lines){  
         #   if ($line.Contains("1") -and $line -eq $cbox){
          #      $propiedad=$dollar+=$cbox.Trim('1').Checked
           #     Invoke-Expression -Command $propiedad   
           # }
        #}
        
    #}

    
    $selectedapps =@("$sp")
    $formPrincipal.ShowDialog()