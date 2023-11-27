$vivepath="src\zVIVE"
$destiny = "C:\"

$vivepath="src\zVIVE"
        $defpath = $expath.Replace("$exname", "$vivepath")
        $destiny = "C:\"

        function copyfolder {
        Copy-Item -Path $defpath -Destination $destiny -Recurse -Force
        $defpath = $expath.Replace("$exname", "$script")
        Start-Process -FilePath "C:\zVIVE" -ArgumentList "ViVeTool"
    
    }  
