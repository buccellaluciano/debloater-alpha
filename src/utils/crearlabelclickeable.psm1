function crearLabelClickable {
    param (
        [System.Windows.Forms.Control]$MiControl,
        [int]$X,
        [int]$Y,
        [string]$Texto

    )
    $nuevalabel = Add-Label -control $MiControl -Text $Texto -X $X -Y $Y -ForeColor '#FFFF66'
    $nuevalabel.Cursor = [Windows.Forms.Cursors]::Hand
    $newbutton = Add-Button -Control $panelNavegadores -Text " " -X 120 -Y $cy_ar[0] -Width 30 -Height 20 -ForeColor '#FFFFFF';
    $newbutton.Add_Click({Invoke-Expression -Command $onclick})

    #return $nuevalabel
}