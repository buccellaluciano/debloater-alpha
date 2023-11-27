$vivepath="src\zVIVE"
$destiny = "C:\"

$vivepath="src\zVIVE"
        $defpath = $expath.Replace("$exname", "$vivepath")
        $destiny = "C:\"

        function zVIVE {
        Copy-Item -Path $defpath -Destination $destiny -Recurse -Force
        $defpath = $expath.Replace("$exname", "$script")
        $zviveon = ("cd C:\zVIVE", "vivetool/disable/id:26008830")
        Invoke-Expression -Command $zviveon
        Import-Module -DisableNameChecking "$PSScriptRoot\src\utils\installpackages.psm1" -Force
        $global:app ="9PF4KZ2VN4W9"
        ipackages
        $tb = "C:\Program Files\WindowsApps\28017CharlesMilette.TranslucentTB_2023.1.0.0_x64__v826wp6bftszj\TranslucentTB.exe"
        $Result=  Add-Type -AssemblyName PresentationCore,PresentationFramework
        $Result = [System.Windows.MessageBox]::Show("Para terminar el proceso, escriba 'Translucent' en la barra de busqueda y ejecute TranslucentTb.","Finalizado","Ok")
            
    
    }  
