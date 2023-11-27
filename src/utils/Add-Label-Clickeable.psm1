function Add-Label-Clickeable {
    param (
        [System.Windows.Forms.Control]$MiControl,
        [int]$X,
        [int]$Y,
        [string]$Texto

    )
    $nuevalabel = Add-Label -control $MiControl -Text $Texto -X $X -Y $Y -ForeColor '#FFFF66'
    $nuevalabel.Cursor = [Windows.Forms.Cursors]::Hand
    $global:newbutton = Add-Button -Control $MiControl -Text " " -X ($X -35) -Y $Y -Width 30 -Height 20 -ForeColor '#FFFFFF';

    

    #return $nuevalabel
}