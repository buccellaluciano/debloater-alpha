function Add-Label-Clickeable {
    param(
        [System.Windows.Forms.Control]$Control,
        [string]$Text,
        [int]$X,
        [int]$Y,
        [int]$Width = 0,
        [int]$Height = 0,
        [float]$Size = 10,
        [string]$ForeColor = "#FFFFFF"
    )
    
    $newLabel = New-Object System.Windows.Forms.Label
    $newLabel.Location = New-Object System.Drawing.Point($X, $Y)

    if ($Width -gt 0 -and $Height -gt 0) {
        $newLabel.Size = New-Object System.Drawing.Size($Width, $Height)
    } else {
        $newLabel.AutoSize = $true
    }

    $newLabel.Text = $Text
    $newLabel.Font = New-Object System.Drawing.Font('Terminal', $Size, [System.Drawing.FontStyle]::Bold)
    $newLabel.ForeColor = [System.Drawing.ColorTranslator]::FromHtml("$ForeColor")
    $newLabel.TextAlign = 'MiddleCenter'
    $newLabel.Cursor = [System.Windows.Forms.Cursors]::Hand


    $Control.Controls.Add($newLabel)

    return $newLabel
}
