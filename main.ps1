Add-Type -assembly System.Windows.Forms
$main_form = New-Object System.Windows.Forms.Form
$main_form.Text ='Debloater'
$main_form.Width = 800
$main_form.Height = 400 
$main_form.AutoSize = $true

$iconPath = ".\img\debloaterIcon.ico"
$icon = [System.Drawing.Icon]::ExtractAssociatedIcon($iconPath)
$main_form.Icon = $icon

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

$main_form.ShowDialog()