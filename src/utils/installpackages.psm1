$pwpath = "C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe"
$expath= $MyInvocation.MyCommand.Definition
$exname = $MyInvocation.MyCommand.Name

function ipackages() {
    $defaultpack=0
    $applistpath = $expath.Replace("utils\$exname","apps\defaultapps.txt")
    Write-Host ("$app")
    $global:app

    if ($defaultpack -eq 1){
    foreach ($line in $lines){
        $global:app=$line
        Write-Host ("$global:app")
        $install ="winget install $global:app --accept-source-agreements --accept-package-agreements"
        Invoke-Expression -Command $install
    }
    $install ="winget install $global:app --accept-source-agreements --accept-package-agreements"
    
}
    $install ="winget install $global:app --accept-source-agreements --accept-package-agreements"
    Invoke-Expression -Command $install
    $Result=  Add-Type -AssemblyName PresentationCore,PresentationFramework
    $Result = [System.Windows.MessageBox]::Show("Paquete correctamente instalado.","Instalado","Ok")
    
}