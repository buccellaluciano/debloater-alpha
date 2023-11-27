function FunctionName {
    $removegapps = 0
    if ($removegapps -eq 1){
        foreach ($line in $gamingapps){
            Get-AppxPackage -Name $line -AllUsers | Remove-AppxPackage
            $Result=  Add-Type -AssemblyName PresentationCore,PresentationFramework
            $Result = [System.Windows.MessageBox]::Show("Paquete $line correctamente desinstalado con GetAppx.","Desinstalado","Ok")
        }
    }
        
}

$gamingapps =@(
    # The apps below will NOT be uninstalled unless selected during the custom setup selection or when
    "*Microsoft.GamingApp*"                    # Modern Xbox Gaming App, required for installing some PC games
    "*Microsoft.XboxGameOverlay*"               # Game overlay, required/useful for some games
    "*Microsoft.XboxGamingOverlay*"            # Game overlay, required/useful for some games)
    )