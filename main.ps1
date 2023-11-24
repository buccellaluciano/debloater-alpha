Add-Type -AssemblyName System.Windows.Forms

Write-Output "Creando punto de restauracion del sistema."
Checkpoint-Computer -Description "Antes de mandarse una cagada" 

####CONFIGURACION FORM PRINCIPAL, UNICO####
$formPrincipal = New-Object System.Windows.Forms.Form
$formPrincipal.Text = 'Debloater Ferrando'
$formPrincipal.Size = New-Object System.Drawing.Size(1000,800)
$formPrincipal.StartPosition = 'CenterScreen'
$formPrincipal.FormBorderStyle = 'FixedSingle'
$formPrincipal.BackColor= [System.Drawing.ColorTranslator]::FromHtml("#252525")
Enable-AutoScroll -Form $formPrincipal

$iconPath = "$PSScriptRoot\src\img\debloaterIcon.ico"
$icon = [System.Drawing.Icon]::ExtractAssociatedIcon($iconPath)
$formPrincipal.Icon = $icon
####CONFIGURACION FORM PRINCIPAL, UNICO####



Import-Module -DisableNameChecking "$PSScriptRoot\src\lib\UI\UI-Creator.psm1" -Force

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

############TAB 1############
$panel1 = Add-Panel -Control $tabPage1 -X 5 -Y 5 -Width 250 -Height 700
##PANEL 1##
$tweaksTitle = Add-Label -control $panel1 -Text "DEBUG TEST" -X 80 -Y 5 -Width 300 -Height 400
$butUninstalWindows = Add-Button -Control $panel1 -Text "ButtonTest" -X 100 -Y 500 -Width 200 -Height 100
##PANEL 1##

$panel2 = Add-Panel -Control $tabPage1 -X 260 -Y 5 -Width 250 -Height 700
##PANEL 2##
$tweaksTitle = Add-Label -control $panel2 -Text "DEBUG TEST" -X 80 -Y 5 -Width 300 -Height 400
$butUninstalWindows = Add-Button -Control $panel2 -Text "ButtonTest" -X 100 -Y 500 -Width 200 -Height 100
$checkBox1 = Add-CheckBox -Control $panel1 -Text "Opción 1" -X 10 -Y 10
##PANEL 2##




############TAB 1############









############TAB 2############
$panel1 = Add-Panel -Control $tab2Install -X 10 -Y 10 -Width 300 -Height 200
$label1 = Add-Label -control $panel1 -Text "Panel 1" -X 5 -Y 5 -Width 457 -Height 20

# Agregar checkboxes al panel1 con nombres específicos
$chBoxChrome = Add-CheckBox -Control $panel1 -Text "Chrome" -X 10 -Y 30
$chBoxBrave = Add-CheckBox -Control $panel1 -Text "Brave" -X 10 -Y 50
$chBoxFirefox = Add-CheckBox -Control $panel1 -Text "Firefox" -X 10 -Y 70
$chBoxOpera = Add-CheckBox -Control $panel1 -Text "Opera" -X 10 -Y 90
$chBoxOperagx = Add-CheckBox -Control $panel1 -Text "Opera GX" -X 10 -Y 110

# Agregar otro panel a la pestaña 2
$panel2 = Add-Panel -Control $tab2Install -X 10 -Y 250 -Width 300 -Height 200
$label2 = Add-Label -control $panel2 -Text "Panel 2" -X 5 -Y 5 -Width 457 -Height 20

# Agregar checkboxes al panel2 con nombres específicos
$checkBox2_1 = Add-CheckBox -Control $panel2 -Text "CheckBox 1 - Desarrollo 6" -X 10 -Y 30
$checkBox2_2 = Add-CheckBox -Control $panel2 -Text "CheckBox 2 - Desarrollo 7" -X 10 -Y 50
$checkBox2_3 = Add-CheckBox -Control $panel2 -Text "CheckBox 3 - Desarrollo 8" -X 10 -Y 70
$checkBox2_4 = Add-CheckBox -Control $panel2 -Text "CheckBox 4 - Desarrollo 9" -X 10 -Y 90
$checkBox2_5 = Add-CheckBox -Control $panel2 -Text "CheckBox 5 - Desarrollo 10" -X 10 -Y 110



$button2 = Add-Button -Control $tab2Install -Text "Button 2" -X 100 -Y 500 -Width 200 -Height 100 -ForeColor '#FFFFFF'
$tweaksTitle = Add-Label -control $tabPage1 -Text "DEBUG TEST" -X 5 -Y 100 -Width 457 -Height 142

############TAB 3############





############TAB 3############
$button3 = Add-Button -Control $tabPage3 -Text "Button 2" -X 10 -Y 10 -Width 100 -Height 20 -ForeColor '#FFFFFF'
############TAB 3############

#$buttons=[windows.forms.messagebox]::show('body','title','YesNo')
#[System.Security.SecurityException]::show


$butUninstalWindows.Add_Click( {
    Write-Host "DevTest"
})

$formPrincipal.ShowDialog()

=======


