$expath= $MyInvocation.MyCommand.Definition
$exname = $MyInvocation.MyCommand.Name
$regname =@("$text")
    function Update-ItemHEX {
        param (
        [byte]$valueData
    )
    
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
        
        Set-ItemProperty -Path "$regroute" -Name "$name" -Value "$valueData" -ErrorAction SilentlyContinue
        
    }
    
}