$expath= $MyInvocation.MyCommand.Definition
$exname = $MyInvocation.MyCommand.Name
$regname =@("$text")
    function deleteRegs {
    
    foreach ($e in $regname){
        $regname+=$global:text
        $enabled
        $regpath = $expath.Replace("utils\$exname","regfiles\$regname")
        $lines = Get-Content -Path $regpath
        Write-Host ("$regpath")
        $j
        foreach ($i in $lines){
            $j++
            if ($j -eq 1) 
            {
                $regroute=$i
            }
            if ($j -eq 2){
                $name=$i
            }

        }

        Write-Host ("BORRADO: $regroute, $name")
        Remove-Item -Path "$regroute" -Name "$name" -ErrorAction SilentlyContinue
        
    }
    
}