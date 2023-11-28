$expath= $MyInvocation.MyCommand.Definition
$exname = $MyInvocation.MyCommand.Name
function Disable-Telemetry {
    param (
        [string] $folder
    )
    $telpath = $expath.Replace("utils\$exname","regfiles\telemetry")
    Write-Host ("$telpath")
    Write-Host ("$expath")
    Write-Host ("$exname")
    $folder = Get-ChildItem -Path $telpath
        foreach ($i in $folder){
            $selected = Get-Content -Path $telpath+$i
            Write-Host ("selected $selected")
            Write-Host ("1:$i")

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


}