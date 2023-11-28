
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


$nowex= $MyInvocation.MyCommand.Definition
$nowexname = $MyInvocation.MyCommand.Name
$scrpath= $nowex.Replace("$nowexname","main.ps1")
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser -Force

Start-Process -FilePath "C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe" -ArgumentList " -File $scrpath"
