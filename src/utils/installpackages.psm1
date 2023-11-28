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