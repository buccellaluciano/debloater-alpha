function ajustarPosicionPaneles{
    param(
        [System.Windows.Forms.Panel[]]$Paneles,
        [Int]$PanelesXColumna = 5
    )
    
    #Estos valores se iran actualizando
    $posXahora = 10    #Posiciones actualizadas
    $posYahora = 130     #para los paneles

    #Esto va a buscar el panel mas ancho para la medicion en el movimiento de columna.
    $panelMasAncho = $Paneles[0]
    foreach ($panel in $Paneles) {
        if ($panel.Width -gt $panelMasAncho.Width){
            $panelMasAncho = $panel
        }
    }
    
    $indiceVer = 0                  #Indice de los paneles en verticalidad.
    $panelAnterior = $Paneles[0]

    #Posicionamiento automaticos por medio de evaluacion.
    foreach ($panel in $Paneles) {

        #Primero viene la definicion de la altura y luego la horizontal.
        #Esto toma la definicion de tamaño del panel anterior a este.
        $posYahora += (($panelAnterior.Height + $ysep) * ($indiceVer -gt 0))
        
        #Si el indice vertical ya llego al limite de paneles por columna, nos movemos
        #a la siguiente columna.
        if ($indiceVer -ge $PanelesXColumna)
        {
            $posXahora += $panelMasAncho.Width + $xsep #Siempre se toma el panel mas ancho.
            $indiceVer = 0
            $posYahora = 130
        }
        $indiceVer++

        #Esto termina de establecer la posicion
        $panel.Location = New-Object System.Drawing.Size($posXahora, $posYahora)
        $panelAnterior = $panel
    }
}