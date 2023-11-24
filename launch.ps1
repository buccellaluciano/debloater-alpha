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
        $script = "debloater.ps1"
        openscript
})
$formPrincipal.Controls.Add($button)


$formPrincipal.ShowDialog()