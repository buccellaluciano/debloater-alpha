$expath= $MyInvocation.MyCommand.Definition
$exname = $MyInvocation.MyCommand.Name
$regname =@("$text")
    function Update-Button-Reg {
        param([System.Windows.Forms.Control]$buttonChanger)

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
            $buttonChanger.Text = "Deshabilitado"
        }if ($valor -eq 1){
            $buttonChanger.Text = "Habilitado"

    
        }
        
    }
    
}