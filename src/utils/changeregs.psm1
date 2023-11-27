$expath= $MyInvocation.MyCommand.Definition
$exname = $MyInvocation.MyCommand.Name
$regname =@("$text")
    function Changeregs {
        param($Sender, $EventArgs)
    
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
        $valor =Get-ItemPropertyValue -Path $regroute -Name $name
    
        if ($valor-eq 0){
            $value=1
        }if ($valor -eq 1){
            $value=0
    
        }
        Write-Host ("$valor TEST BOTON: $Sender")
        Set-ItemProperty -Path "$regroute" -Name "$name" -Value "$value" -ErrorAction SilentlyContinue
        
    }
    
}