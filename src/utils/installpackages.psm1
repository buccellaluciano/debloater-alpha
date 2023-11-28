$pwpath = "C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe"
$expath= $MyInvocation.MyCommand.Definition
$exname = $MyInvocation.MyCommand.Name

function INSTALAR-PACK {
    param (
        [string]$Pack
    )
        

    $install ="winget install $Pack --accept-source-agreements --accept-package-agreements"
    Write-Host("$Pack")
    Invoke-Expression -Command $install
    $Result=  Add-Type -AssemblyName PresentationCore,PresentationFramework
    $Result = [System.Windows.MessageBox]::Show("Paquete $Pack correctamente instalado.","Instalado","Ok")
    
    

}