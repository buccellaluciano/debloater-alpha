$expath= $MyInvocation.MyCommand.Definition
$exname = $MyInvocation.MyCommand.Name
$tfiles =@(
    "dtelemetry1.txt",
    "dtelemetry2.txt",
    "dtelemetry3.txt",
    "dtelemetry4.txt",
    "dtelemetry5.txt",
    "dtelemetry6.txt",
    "dtelemetry7.txt",
    "dtelemetry8.txt",
    "dtelemetry9.txt",
    "dtelemetry10.txt",
    "dtelemetry11.txt"
)
function Disable-Telemetry {
    param (
        [string] $folder
    )
        foreach ($i in $tfiles){
            $telpath = $expath.Replace("utils\$exname","regfiles\telemetry\$($files[$i])")
            $selected = Get-Content -Path $telpath
            Write-Host ("selected $selected")                
        }
        $j
        foreach ($line in $selected){
            $j++
                if ($j -eq 1){
                    $regroute = $line
                }elseif ($j -eq 2){
                    $name = $line
                }
            $valor =Get-ItemPropertyValue -Path $regroute -Name $name
                if ($valor-eq 0){
                    $value=1
                    
                }if ($valor -eq 1){
                    $value=0 
                }
        Write-Host ("$regroute")
        Write-Host ("$name")
                #Set-ItemProperty -Path "$regroute" -Name "$name" -Value "$value" -ErrorAction SilentlyContinue
        }

}