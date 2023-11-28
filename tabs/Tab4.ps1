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
Add-Label -control $tabPage4 -Text "80 Commits, una ardua tarea para llevar a flote el proyecto mas asqueroso de su vida (hasta el momento!). Agrego 12000 lineas de codigo (eh?), borro 2100." -X ($formPrincipal.Width / 2 - 250) -Y 1510 -Width ($formPrincipal.Width / 2 - 50) -Height 120 -ForeColor '#2ECC71' -Size 15


#secCock
Add-Label -control $tabPage4 -Text "Mateo" -X ($formPrincipal.Width / 2 - 250) -Y 1830 -Width ($formPrincipal.Width / 2 - 50) -Height 40 -ForeColor '#2ECC71' -Size 20
$4ImagenCredito = Add-PictureBox -control $tabPage4 -ImagePath "$global:imagenCocking" -X ($formPrincipal.Width / 2 - 250) -Y 1890 -Width 500 -Height 300
Add-Label -control $tabPage4 -Text "El si quedo gaga. Enfermo y no pudo hacer el programa como queria, como el ciclo pasado. Las leyendas cuentan que se volvio aun mas gaga que cuando hizo el anti deepfreeze." -X ($formPrincipal.Width / 2 - 250) -Y 2210 -Width ($formPrincipal.Width / 2 - 50) -Height 120 -ForeColor '#2ECC71' -Size 15
#en mismas secciones diferencia de 50px de foto minSec a minSec
$5ImagenCredito = Add-PictureBox -control $tabPage4 -ImagePath "$global:imagenCockingGraph" -X ($formPrincipal.Width / 2 - 250) -Y 2380 -Width 500 -Height 300
Add-Label -control $tabPage4 -Text "85 Commits, esta disputado quien hizo mas pero esta claro quien fue por la cantidad de commits...(commiteo 3x de lo normal). Agrego 2279 lineas de codigo, borro 1704." -X ($formPrincipal.Width / 2 - 250) -Y 2700 -Width ($formPrincipal.Width / 2 - 50) -Height 120 -ForeColor '#2ECC71' -Size 15


#secJulian
Add-Label -control $tabPage4 -Text "Julian" -X ($formPrincipal.Width / 2 - 250) -Y 3100 -Width ($formPrincipal.Width / 2 - 50) -Height 40 -ForeColor '#2ECC71' -Size 20 #diferencia anterior +400px
$6ImagenCredito = Add-PictureBox -control $tabPage4 -ImagePath "$global:imagenJulian" -X ($formPrincipal.Width / 2 - 250) -Y 3170 -Width 500 -Height 300 #diferencia anterior +60px
Add-Label -control $tabPage4 -Text "Se quedo estudiando para la universidad, creo algunas funciones para facilitar la creacion de la interfaz en un tiempo eficaz." -X ($formPrincipal.Width / 2 - 250) -Y 3490 -Width ($formPrincipal.Width / 2 - 50) -Height 120 -ForeColor '#2ECC71' -Size 15 #diferencia anterior +320px
#en mismas secciones diferencia de 50px de foto minSec a minSec
$7ImagenCredito = Add-PictureBox -control $tabPage4 -ImagePath "$global:imagenJulianGraph" -X ($formPrincipal.Width / 2 - 250) -Y 3660 -Width 500 -Height 300 #diferencia anterior +170px
Add-Label -control $tabPage4 -Text "6 Commits, con pocos commits, pero ayudaron bastante a interfaz grafica. Agrego 533 lineas de codigo, borro 250." -X ($formPrincipal.Width / 2 - 250) -Y 3980 -Width ($formPrincipal.Width / 2 - 50) -Height 120 -ForeColor '#2ECC71' -Size 15 #diferencia anterior +320px


#secRodrigo
Add-Label -control $tabPage4 -Text "Rodigor" -X ($formPrincipal.Width / 2 - 250) -Y 4380 -Width ($formPrincipal.Width / 2 - 50) -Height 40 -ForeColor '#2ECC71' -Size 20 #diferencia anterior +400px
$8ImagenCredito = Add-PictureBox -control $tabPage4 -ImagePath "$global:imagenRodigor" -X ($formPrincipal.Width / 2 - 250) -Y 4440 -Width 500 -Height 300 #diferencia anterior +60px
Add-Label -control $tabPage4 -Text "Si, ya se que esta mal escrito. Aunque no lo parezca lo tuvimos a punta de arma laburando para hacer la interfaz grafica, poner los valores de las x,y bien y escribir las cosas como el tab de administracion de software." -X ($formPrincipal.Width / 2 - 250) -Y 4760 -Width ($formPrincipal.Width / 2 - 50) -Height 120 -ForeColor '#2ECC71' -Size 15 #diferencia anterior +320px
#en mismas secciones diferencia de 50px de foto minSec a minSec
$9ImagenCredito = Add-PictureBox -control $tabPage4 -ImagePath "$global:imagenRodigorGraph" -X ($formPrincipal.Width / 2 - 250) -Y 4930 -Width 500 -Height 300 #diferencia anterior +170px
Add-Label -control $tabPage4 -Text "4 Commits, con pocos commits de vuelta, pero tener que aguantar a mateo gritando y con ganas de reventar 7 paredes es mucho esfuerzo ya. Commits eficaces  Agrego 198 lineas de codigo, borro 14." -X ($formPrincipal.Width / 2 - 250) -Y 5250 -Width ($formPrincipal.Width / 2 - 50) -Height 120 -ForeColor '#2ECC71' -Size 15 #diferencia anterior +320px


#secFran
Add-Label -control $tabPage4 -Text "Fran" -X ($formPrincipal.Width / 2 - 250) -Y 5650 -Width ($formPrincipal.Width / 2 - 50) -Height 40 -ForeColor '#2ECC71' -Size 20 #diferencia anterior +400px
$10ImagenCredito = Add-PictureBox -control $tabPage4 -ImagePath "$global:imagenFran" -X ($formPrincipal.Width / 2 - 250) -Y 5710 -Width 500 -Height 300 #diferencia anterior +60px
Add-Label -control $tabPage4 -Text "Apoyo moral durante los ultimos momentos de desarrollo, sirvio mucho cuando uno gritaba 'que esta mal con mi codigo?' y remarcaba que faltaba un '$'." -X ($formPrincipal.Width / 2 - 250) -Y 6030 -Width ($formPrincipal.Width / 2 - 50) -Height 120 -ForeColor '#2ECC71' -Size 15 #diferencia anterior +320px
#en mismas secciones diferencia de 50px de foto minSec a minSec
$11ImagenCredito = Add-PictureBox -control $tabPage4 -ImagePath "$global:imagenTroll" -X ($formPrincipal.Width / 2 - 250) -Y 6200 -Width 500 -Height 300 #diferencia anterior +170px
Add-Label -control $tabPage4 -Text "Paparrando o Hijorrando, depende si tocas la imagen o no." -X ($formPrincipal.Width / 2 - 250) -Y 6520 -Width ($formPrincipal.Width / 2 - 50) -Height 120 -ForeColor '#2ECC71' -Size 15 #diferencia anterior +320px


#secGPT
Add-Label -control $tabPage4 -Text "Chat-Ptg" -X ($formPrincipal.Width / 2 - 250) -Y 6920 -Width ($formPrincipal.Width / 2 - 50) -Height 40 -ForeColor '#2ECC71' -Size 20 #diferencia anterior +400px
$12ImagenCredito = Add-PictureBox -control $tabPage4 -ImagePath "$global:imagenPtg" -X ($formPrincipal.Width / 2 - 250) -Y 6980 -Width 500 -Height 300 #diferencia anterior +60px
Add-Label -control $tabPage4 -Text "Te dije que ya se que esta mal escrito, el quinto integrante del equipo, el que mas codigo proporciono a todo esto. Mil gracias ptg, sin vos probablemente nos hubieramos llevado la materia mas rapido." -X ($formPrincipal.Width / 2 - 250) -Y 7300 -Width ($formPrincipal.Width / 2 - 50) -Height 120 -ForeColor '#2ECC71' -Size 15 #diferencia anterior +320px
#en mismas secciones diferencia de 50px de foto minSec a minSec
$13ImagenCredito = Add-PictureBox -control $tabPage4 -ImagePath "$global:ptgGraph" -X ($formPrincipal.Width / 2 - 250) -Y 7470 -Width 500 -Height 300 #diferencia anterior +170px
Add-Label -control $tabPage4 -Text "Que mas puedo decir acerca de este gran heroe nacional? Agrego 15036 lineas de codigo, borro 0." -X ($formPrincipal.Width / 2 - 250) -Y 7790 -Width ($formPrincipal.Width / 2 - 50) -Height 120 -ForeColor '#2ECC71' -Size 15 #diferencia anterior +320px



#secLAST
Add-Label -control $tabPage4 -Text "Ultimos mensajes" -X ($formPrincipal.Width / 2 - 250) -Y 8190 -Width ($formPrincipal.Width / 2 - 50) -Height 40 -ForeColor '#2ECC71' -Size 20
Add-Label -control $tabPage4 -Text "Luciano" -X ($formPrincipal.Width / 2 - 250) -Y 8280 -Width ($formPrincipal.Width / 2 - 50) -Height 40 -ForeColor '#2ECC71' -Size 17
Add-Label -control $tabPage4 -Text "LOREMP IPSUM" -X ($formPrincipal.Width / 2 - 250) -Y 8340 -Width ($formPrincipal.Width / 2 - 50) -Height 150 -ForeColor '#2ECC71' -Size 15 
#COCK
Add-Label -control $tabPage4 -Text "Mateo" -X ($formPrincipal.Width / 2 - 250) -Y 8540 -Width ($formPrincipal.Width / 2 - 50) -Height 40 -ForeColor '#2ECC71' -Size 17 
Add-Label -control $tabPage4 -Text "LOREMP IPSUM" -X ($formPrincipal.Width / 2 - 250) -Y 8600 -Width ($formPrincipal.Width / 2 - 50) -Height 150 -ForeColor '#2ECC71' -Size 15
#julian
Add-Label -control $tabPage4 -Text "Julian" -X ($formPrincipal.Width / 2 - 250) -Y 8800 -Width ($formPrincipal.Width / 2 - 50) -Height 40 -ForeColor '#2ECC71' -Size 17
Add-Label -control $tabPage4 -Text "LOREMP IPSUM" -X ($formPrincipal.Width / 2 - 250) -Y 8860 -Width ($formPrincipal.Width / 2 - 50) -Height 150 -ForeColor '#2ECC71' -Size 15 
#rodigor
Add-Label -control $tabPage4 -Text "Rodrigo" -X ($formPrincipal.Width / 2 - 250) -Y 9060 -Width ($formPrincipal.Width / 2 - 50) -Height 40 -ForeColor '#2ECC71' -Size 17
Add-Label -control $tabPage4 -Text "LOREMP IPSUM" -X ($formPrincipal.Width / 2 - 250) -Y 9120 -Width ($formPrincipal.Width / 2 - 50) -Height 150 -ForeColor '#2ECC71' -Size 15 










$1ImagenCredito.Add_Click{
    $1ImagenCredito.Image = [System.Drawing.Image]::FromFile($global:imagenTroll)
    [Console]::Beep()
}
$2ImagenCredito.Add_Click{ #IMAGEN DE HIJORRANDO POSTIÑA
    $2ImagenCredito.Image = [System.Drawing.Image]::FromFile($global:imagenLuciano)
    #$2ImagenCredito.Image = [System.Drawing.Image]::FromFile($global:imagenTrollJR)
    [Console]::Beep()
}
$3ImagenCredito.Add_Click{
    $2ImagenCredito.Image = [System.Drawing.Image]::FromFile($global:imagenTrollJR)
    [Console]::Beep()
}
$4ImagenCredito.Add_Click{
    $4ImagenCredito.Image = [System.Drawing.Image]::FromFile($global:imagenTroll)
}
$5ImagenCredito.Add_Click{
    $5ImagenCredito.Image = [System.Drawing.Image]::FromFile($global:imagenTrollJR)
    Start-Process -FilePath $global:lastEasterEgg
}
$6ImagenCredito.Add_Click{
    $6ImagenCredito.Image = [System.Drawing.Image]::FromFile($global:imagenTroll)
    [Console]::Beep()
}
$7ImagenCredito.Add_Click{
    $7ImagenCredito.Image = [System.Drawing.Image]::FromFile($global:imagenTrollJR)
    [Console]::Beep()
}
$8ImagenCredito.Add_Click{
    $8ImagenCredito.Image = [System.Drawing.Image]::FromFile($global:imagenTroll)
    [Console]::Beep()
}
$9ImagenCredito.Add_Click{
    $9ImagenCredito.Image = [System.Drawing.Image]::FromFile($global:imagenTrollJR)
    [Console]::Beep()
}
$10ImagenCredito.Add_Click{
    $10ImagenCredito.Image = [System.Drawing.Image]::FromFile($global:imagenTroll)
    [Console]::Beep()
}
$11ImagenCredito.Add_Click{ #IMAGEN DE PPARANDO POSTIÑA
    $11ImagenCredito.Image = [System.Drawing.Image]::FromFile($global:imagenTrollJR)
    [Console]::Beep()
}
$12ImagenCredito.Add_Click{
    $12ImagenCredito.Image = [System.Drawing.Image]::FromFile($global:imagenTroll)
    [Console]::Beep()
}
$13ImagenCredito.Add_Click{
    $13ImagenCredito.Image = [System.Drawing.Image]::FromFile($global:imagenTrollJR)
    [Console]::Beep()
}



#$btnlastbtn = Add-ImageButton -Control $tabPage4 -ImagePath $global:imagenTroll -X ($formPrincipal.Width / 2 - 400) -Y ($formPrincipal.Width / 2 - 500) -Width 800 -Height 500
#$btnlastbtn.Add_Click{
#    autoHideTaskbar
#}
