$titlePrincipal = Add-Label -control $tabPage4 -Text "Creditos" -X 0 -Y 10 -Width ($formPrincipal.Width-45) -Height 50 -ForeColor '#f54242' -Size 30


#Add-Label -control $tabPage4 -Text "Creditos" -X 0 -Y 10 -Width ($formPrincipal.Width-50) -Height 50 -ForeColor '#f54242' -Size 15


#first image
$1ImagenCredito = Add-PictureBox -control $tabPage4 -ImagePath "$global:comitsBarras" -X ($formPrincipal.Width / 2 - 250) -Y 100 -Width 500 -Height 300
Add-Label -control $tabPage4 -Text "Excluyendo merges, 4 autores pushearon 163 commits a la version 0.1 y 170 commits a todas las branches. En la 0.1, 115 archivos fueron modificados y hubo 10,917 adiciones y 300 eliminaciones." -X ($formPrincipal.Width / 2 - 250) -Y 420 -Width ($formPrincipal.Width / 2 - 50) -Height 120 -ForeColor '#2ECC71' -Size 15


#secLucho
Add-Label -control $tabPage4 -Text "Luciano" -X ($formPrincipal.Width / 2 - 250) -Y 620 -Width ($formPrincipal.Width / 2 - 50) -Height 40 -ForeColor '#2ECC71' -Size 20
$2ImagenCredito = Add-PictureBox -control $tabPage4 -ImagePath "$global:imagenTrollJR" -X ($formPrincipal.Width / 2 - 250) -Y 700 -Width 500 -Height 300
Add-Label -control $tabPage4 -Text "Un muchacho especial, hizo la mayoria del programa. Se quedo la mayoria de dias llorando por programar en powershell. Los rumores cuentan que se quedo gaga." -X ($formPrincipal.Width / 2 - 250) -Y 1020 -Width ($formPrincipal.Width / 2 - 50) -Height 120 -ForeColor '#2ECC71' -Size 15
#en mismas secciones diferencia de 50px de foto minSec a minSec
$3ImagenCredito = Add-PictureBox -control $tabPage4 -ImagePath "$global:imagenLucianoGraph" -X ($formPrincipal.Width / 2 - 250) -Y 1190 -Width 500 -Height 300
Add-Label -control $tabPage4 -Text "80 Commits, una ardua tarea para llevar a flote el proyecto mas asqueroso de su vida (hasta el momento!). Agrego 12000 lineas de codigo (eh?), borro 2100" -X ($formPrincipal.Width / 2 - 250) -Y 1510 -Width ($formPrincipal.Width / 2 - 50) -Height 120 -ForeColor '#2ECC71' -Size 15


#secCock
Add-Label -control $tabPage4 -Text "Mateo" -X ($formPrincipal.Width / 2 - 250) -Y 1830 -Width ($formPrincipal.Width / 2 - 50) -Height 40 -ForeColor '#2ECC71' -Size 20
$4ImagenCredito = Add-PictureBox -control $tabPage4 -ImagePath "$global:imagenCocking" -X ($formPrincipal.Width / 2 - 250) -Y 1890 -Width 500 -Height 300
Add-Label -control $tabPage4 -Text "El si quedo gaga. Enfermo y no pudo hacer el programa como queria, como el ciclo pasado. Las leyendas cuentan que se volvio aun mas gaga que cuando hizo el anti deepfreeze." -X ($formPrincipal.Width / 2 - 250) -Y 2210 -Width ($formPrincipal.Width / 2 - 50) -Height 120 -ForeColor '#2ECC71' -Size 15
#en mismas secciones diferencia de 50px de foto minSec a minSec
$5ImagenCredito = Add-PictureBox -control $tabPage4 -ImagePath "$global:imagenCockingGraph" -X ($formPrincipal.Width / 2 - 250) -Y 2380 -Width 500 -Height 300
Add-Label -control $tabPage4 -Text "85 Commits, esta disputado quien hizo mas pero esta claro quien fue por la cantidad de commits...(commiteo 3x de lo normal.). Agrego 2279 lineas de codigo, borro 1704" -X ($formPrincipal.Width / 2 - 250) -Y 2400 -Width ($formPrincipal.Width / 2 - 50) -Height 120 -ForeColor '#2ECC71' -Size 15


#$3ImagenCredito = Add-PictureBox -control $tabPage4 -ImagePath "$imagenLucianoGraph" -X ($formPrincipal.Width / 2 - 250) -Y 500 -Width 500 -Height 300
#Add-Label -control $tabPage4 -Text "AAA" -X ($formPrincipal.Width / 2 - 250) -Y 800 -Width ($formPrincipal.Width / 2 - 50) -Height 120 -ForeColor '#2ECC71' -Size 15
















$1ImagenCredito.Add_Click{
    $1ImagenCredito.Image = [System.Drawing.Image]::FromFile($global:imagenTroll)
}
$2ImagenCredito.Add_Click{
    $2ImagenCredito.Image = [System.Drawing.Image]::FromFile($global:imagenLuciano)
    #$2ImagenCredito.Image = [System.Drawing.Image]::FromFile($global:imagenTrollJR)
}
$3ImagenCredito.Add_Click{
    $2ImagenCredito.Image = [System.Drawing.Image]::FromFile($global:imagenLuciano)
    #$2ImagenCredito.Image = [System.Drawing.Image]::FromFile($global:imagenTrollJR)
}
$4ImagenCredito.Add_Click{
    $4ImagenCredito.Image = [System.Drawing.Image]::FromFile($global:imagenTroll)

}
$5ImagenCredito.Add_Click{
    $5ImagenCredito.Image = [System.Drawing.Image]::FromFile($global:imagenTrollJR)
    Start-Process -FilePath $global:lastEasterEgg
}



#$btnlastbtn = Add-ImageButton -Control $tabPage4 -ImagePath $global:imagenTroll -X ($formPrincipal.Width / 2 - 400) -Y ($formPrincipal.Width / 2 - 500) -Width 800 -Height 500
#$btnlastbtn.Add_Click{
#    autoHideTaskbar
#}
