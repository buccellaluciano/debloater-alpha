-ErrorAction SilentlyContinue
Add-Type -AssemblyName System.Windows.Forms
Add-Type -Assembly System.Drawing

Write-Output "Habilitando punto de restauracion del sistema."
Enable-ComputerRestore -Drive "C:\"
Write-Output "Creando punto de restauracion del sistema."
Checkpoint-Computer -Description "Antes de mandarse una cagada" 

####CONFIGURACION FORM PRINCIPAL, UNICO####
$formPrincipal = New-Object System.Windows.Forms.Form
$formPrincipal.Text = 'Debloater Ferrando'
$formPrincipal.Size = New-Object System.Drawing.Size(1100,700)
$formPrincipal.StartPosition = 'CenterScreen'
$formPrincipal.FormBorderStyle = 'FixedSingle'
$formPrincipal.MinimizeBox = $false
$formPrincipal.MaximizeBox = $false
$formPrincipal.MaximizeBox = $false
$formPrincipal.BackColor= [System.Drawing.ColorTranslator]::FromHtml("#252525")

$iconPath = "$PSScriptRoot\src\img\debloaterIcon.ico"
$icon = [System.Drawing.Icon]::ExtractAssociatedIcon($iconPath)
$formPrincipal.Icon = $icon
####CONFIGURACION FORM PRINCIPAL, UNICO####
$global:imagenTroll="$PSScriptRoot\src\img\paparrando.png"
$global:imagenCocking="$PSScriptRoot\src\img\cocking.png"
$global:imagenJulian="$PSScriptRoot\src\img\julian.png"
$global:imagenLuciano="$PSScriptRoot\src\img\luciano.png"
$global:imagenRodigor="$PSScriptRoot\src\img\rodigor.png"
$global:imagenPtg="$PSScriptRoot\src\img\chatptg.png"
$global:imagenFran="$PSScriptRoot\src\img\fran.png"

###IMPORTAR MODULOS, CARGALOS TODOS DE UNA DESPUES CAMBIAR... ?####
##TROLLS##
Import-Module -DisableNameChecking "$PSScriptRoot\src\scripts\Congrats.psm1" -Force
Import-Module -DisableNameChecking "$PSScriptRoot\src\scripts\Set-Wallpaper.psm1" -Force
##TROLLS##
##UI##
Import-Module -DisableNameChecking "$PSScriptRoot\src\lib\UI\UI-Creator.psm1" -Force
Import-Module -DisableNameChecking "$PSScriptRoot\src\lib\UImod\UI-Automation.psm1" -Force
Import-Module -DisableNameChecking "$PSScriptRoot\src\lib\UImod\Update-Button.psm1" -Force
Import-Module -DisableNameChecking "$PSScriptRoot\src\lib\UImod\Add-Label-Clickeable.psm1" -Force
Import-Module -DisableNameChecking "$PSScriptRoot\src\lib\UImod\ajustarposicionpaneles.psm1" -Force
Import-Module -DisableNameChecking "$PSScriptRoot\src\utils\Update-Button-Reg.psm1" -Force
Import-Module -DisableNameChecking "$PSScriptRoot\src\lib\UImod\Confirm-Action.psm1" -Force
##UI##
##INSTALL##
Import-Module -DisableNameChecking "$PSScriptRoot\src\utils\installpackages.psm1" -Force
Import-Module -DisableNameChecking "$PSScriptRoot\src\utils\uninstallpackages.psm1" -Force
Import-Module -DisableNameChecking "$PSScriptRoot\src\utils\removegapps.psm1" -Force
##INSTALL##
##REMOVE##
Import-Module -DisableNameChecking "$PSScriptRoot\src\utils\changeregs.psm1" -Force
Import-Module -DisableNameChecking "$PSScriptRoot\src\utils\deleteregs.psm1" -Force
Import-Module -DisableNameChecking "$PSScriptRoot\src\utils\disable-telemetry.psm1" -Force
##REMOVE##
##TWEAKS##
Import-Module -DisableNameChecking "$PSScriptRoot\src\scripts\hideTaskbar.psm1" -Force
Import-Module -DisableNameChecking "$PSScriptRoot\src\tweaks\translucenttb.psm1" -Force
Import-Module -DisableNameChecking "$PSScriptRoot\src\tweaks\translucenttb.psm1" -Force
Import-Module -DisableNameChecking "$PSScriptRoot\src\utils\Update-ItemHEX.psm1" -Force


##TWEAKS##
##SCRIPTS##
Import-Module -DisableNameChecking "$PSScriptRoot\src\tweaks\autoHideTaskbar.psm1" -Force

##? AYUDA PORFGAVOR
Import-Module -DisableNameChecking "$PSScriptRoot\src\utils\removegapps.psm1" -Force
###IMPORTAR MODULOS, CARGALOS TODOS DE UNA DESPUES CAMBIAR... ?####

$pwpath = "C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe"

$mainpath= $MyInvocation.MyCommand.Definition

# abre el script indicado, consigue la direccion del mismo a partir de la variable script, la cual obtiene un valor a partir de apretar un boton.
function openscript {
    $defpath = $mainpath.Replace("main.ps1", "$script")
    Start-Process -FilePath $pwpath -ArgumentList $defpath
}

#######
$tabControl = Add-TabControl -Form $formPrincipal

$tabPage1 = Add-TabPage -TabControl $tabControl -Text "Tweaks"
$tab2Install = Add-TabPage -TabControl $tabControl -Text "Administracion de software"
$tabPage3 = Add-TabPage -TabControl $tabControl -Text "Debloat"
$tabPage4 = Add-TabPage -TabControl $tabControl -Text "Creditos" #guardar para que ferrando vea que tan tontos somos


. "$PSScriptRoot\tabs\Tab1.ps1"
. "$PSScriptRoot\tabs\Tab2.ps1"
. "$PSScriptRoot\tabs\Tab3.ps1"
. "$PSScriptRoot\tabs\Tab4.ps1"

$value= $MyInvocation.MyCommand.Definition
$appsname = $MyInvocation.MyCommand.Name


param (
    [string]$Pasarapp
)



#[Console]::Beep()
#$buttons=[windows.forms.messagebox]::show('body','title','YesNo')
#[System.Security.SecurityException]::show


#Congratulate
$formPrincipal.ShowDialog()
