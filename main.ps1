Add-Type -AssemblyName System.Windows.Forms

Write-Output "Habilitando punto de restauracion del sistema."
Enable-ComputerRestore -Drive "C:\"
Write-Output "Creando punto de restauracion del sistema."
Checkpoint-Computer -Description "Antes de mandarse una cagada" 

####CONFIGURACION FORM PRINCIPAL, UNICO####
$formPrincipal = New-Object System.Windows.Forms.Form
$formPrincipal.Text = 'Debloater Ferrando'
$formPrincipal.Size = New-Object System.Drawing.Size(1000,500)
$formPrincipal.StartPosition = 'CenterScreen'
$formPrincipal.FormBorderStyle = 'FixedSingle'
$formPrincipal.BackColor= [System.Drawing.ColorTranslator]::FromHtml("#252525")

$iconPath = "$PSScriptRoot\src\img\debloaterIcon.ico"
$icon = [System.Drawing.Icon]::ExtractAssociatedIcon($iconPath)
$formPrincipal.Icon = $icon
####CONFIGURACION FORM PRINCIPAL, UNICO####


###IMPORTAR MODULOS, CARGALOS TODOS DE UNA DESPUES CAMBIAR... ?####
Import-Module -DisableNameChecking "$PSScriptRoot\src\lib\UI\UI-Creator.psm1" -Force
Import-Module -DisableNameChecking "$PSScriptRoot\src\lib\UI\UI-Automation.psm1" -Force


###IMPORTAR MODULOS, CARGALOS TODOS DE UNA DESPUES CAMBIAR... ?####

$pwpath = "C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe"

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
$mainpath= $MyInvocation.MyCommand.Definition

# abre el script indicado, consigue la direccion del mismo a partir de la variable script, la cual obtiene un valor a partir de apretar un boton.
function openscript {
    $defpath = $mainpath.Replace("main.ps1", "$script")
    Start-Process -FilePath $pwpath -ArgumentList $defpath
}

#######
$tabControl = Add-TabControl -Form $formPrincipal

$tabPage1 = Add-TabPage -TabControl $tabControl -Text "Tweaks"
$tab2Install = Add-TabPage -TabControl $tabControl -Text "Install"
$tabPage3 = Add-TabPage -TabControl $tabControl -Text "DEBUG"

. "$PSScriptRoot\Tab1.ps1"
. "$PSScriptRoot\Tab2.ps1"
. "$PSScriptRoot\Tab3.ps1"


#$buttons=[windows.forms.messagebox]::show('body','title','YesNo')
#[System.Security.SecurityException]::show








####RODRIGO Y JULIAN: TIENEN QUE HACER FUNCIONES DE LOS BOTONES.###########


$butUninstalWindows.Add_Click( {
    Write-Host "DevTest"
})

$formPrincipal.ShowDialog()

=======


