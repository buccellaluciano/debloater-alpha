Add-Type -AssemblyName System.Windows.Forms

$formPrincipal = New-Object System.Windows.Forms.Form
$formPrincipal.Text = 'Super Debloater!'
$formPrincipal.Size = New-Object System.Drawing.Size(800,600)
$formPrincipal.StartPosition = 'CenterScreen'

$iconPath = ".\img\debloaterIcon.ico"
$icon = [System.Drawing.Icon]::ExtractAssociatedIcon($iconPath)
$formPrincipal.Icon = $icon



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

=======





Import-Module -DisableNameChecking .\src\lib\UI\UI-Creator.psm1 -Force


$tabControl = Add-TabControl -Form $formPrincipal -X 0 -Y 0 -Width 800 -Height 600

$tabPage1 = Add-TabPage -TabControl $tabControl -Text "Tweaks"
$tabPage2 = Add-TabPage -TabControl $tabControl -Text "Install"
$tabPage3 = Add-TabPage -TabControl $tabControl -Text "DEBUG"

############TAB 1############
##GROUPBOX1##
$GrBox_UninWindows = Add-GroupBox -Control $tabPage1 -Text "Developer test" -X 5 -Y 5 -Width 300 -Height 400
$GrBox_UninWindows.Controls.Add($butUninstalWindows) #Agregar foreach, que recorra todo lo que quiera ser agregado en el groupbox
##GROUPBOX1##
$butUninstalWindows = Add-Button -Control $tabPage1 -Text "Developer test" -X 10 -Y 10 -Width 100 -Height 20





=======
############TAB 1############

$button = New-Object System.Windows.Forms.Button
$Button.Text = "asheeee"
$button.Location = New-Object System.Drawing.Point(100, 200)

$Button.Add_Click({
        $script = "debloater.ps1"
        openscript
})
$main_form.Controls.Add($button)

$button = New-Object System.Windows.Forms.Button
$Button.Text = "nachopolis"
$button.Location = New-Object System.Drawing.Point(400, 300)
$Button.Add_Click({
        $script = "create-folder.ps1"
        openscript
})
$main_form.Controls.Add($button)
=======
$Button.Add_Click({$buttons})
$main_form.Controls.Add($button)
=======
$formPrincipal.BackColor = [System.Drawing.Color]::LightGray



=======

$formPrincipal.BackColor = [System.Drawing.Color]::LightGray


Import-Module -DisableNameChecking .\src\lib\UI\UI-Creator.psm1 -Force

$tabControl = Add-TabControl -Form $formPrincipal -X 0 -Y 0 -Width 800 -Height 600

$tabPage1 = Add-TabPage -TabControl $tabControl -Text "Tweaks"
$tabPage2 = Add-TabPage -TabControl $tabControl -Text "Install"
$tabPage3 = Add-TabPage -TabControl $tabControl -Text "DEBUG"

############TAB 1############
##GROUPBOX1##
$GrBox_UninWindows = Add-GroupBox -Control $tabPage1 -Text "Developer test" -X 5 -Y 5 -Width 300 -Height 400
$GrBox_UninWindows.Controls.Add($butUninstalWindows) #Agregar foreach, que recorra todo lo que quiera ser agregado en el groupbox
##GROUPBOX1##
$butUninstalWindows = Add-Button -Control $tabPage1 -Text "Developer test" -X 10 -Y 10 -Width 100 -Height 20



############TAB 1############









############TAB 2############
$button2 = Add-Button -Control $tabPage2 -Text "Button 2" -X 10 -Y 10 -Width 100 -Height 20
############TAB 3############





############TAB 3############
$button3 = Add-Button -Control $tabPage3 -Text "Button 2" -X 10 -Y 10 -Width 100 -Height 20
############TAB 3############

#$buttons=[windows.forms.messagebox]::show('body','title','YesNo')
#[System.Security.SecurityException]::show


$butUninstalWindows.Add_Click( {
    Write-Host "DevTest"
})

$formPrincipal.ShowDialog()

=======


