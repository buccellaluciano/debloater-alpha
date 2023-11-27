function Add-Label-Clickeable {
    param (
        [System.Windows.Forms.Control]$Control,
        [string]$Text,
        [int]$X,
        [int]$Y,
        [int]$Width = 0,
        [int]$Height = 0,
        [float]$Size = 10,
        [string]$ForeColor = "#FFFFFF"
    )
    
    $newLabel = New-Object System.Windows.Forms.Label  # Cambiado de Panel a Label
    $newLabel.Location = New-Object System.Drawing.Size($X, $Y)

    #Nuevo ajuste de tamaño
    if ($Width -gt 0 -and $Height -gt 0)
    {
        $newLabel.Size = New-Object System.Drawing.Size($Width, $Height)
    }
    else
    {
        $newLabel.AutoSize = $true
    }
    $newLabel.Text = $Text
    $newLabel.Font = New-Object System.Drawing.Font('Arial', $Size, [System.Drawing.FontStyle]::Bold)
    $newLabel.ForeColor = [System.Drawing.ColorTranslator]::FromHtml("$ForeColor")
    #$newLabel.BackColor = [System.Drawing.ColorTranslator]::FromHtml("#FFFFFF")
    $newLabel.TextAlign = 'MiddleTop'
    $newLabel.Cursor = [Windows.Forms.Cursors]::Hand

    
    $Control.Controls.Add($newLabel)

    return $newLabel
}