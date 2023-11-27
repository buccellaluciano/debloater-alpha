function crearLabelClickable {
    param (
        [System.Windows.Forms.Control]$MiControl,
        [int]$X,
        [int]$Y,
        [string]$Texto
    )
    $nuevalabel = Add-Label -control $MiControl -Text $Texto -X $X -Y $Y -ForeColor '#FFFF66'
    $nuevalabel.Cursor = [Windows.Forms.Cursors]::Hand

    #return $nuevalabel
}