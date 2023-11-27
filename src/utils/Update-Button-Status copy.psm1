function Update-Button-Status {
    param (
        [System.Windows.Forms.Control]$button,
        [bool]$variableObserved,
        [string]$textInicial = "Activar",
        [string]$textDespues = "Desactivar"
    )

    if ($variableObserved) {
        $button.Text = "$textDespues"
        $button.BackColor = [System.Drawing.Color]::Red
        $variableObserved = $false
        Write-Host "DEV TEST TRUE"
    } else {
        $button.Text = "$textInicial"
        $button.BackColor = [System.Drawing.Color]::Green
        $variableObserved = $true
        Write-Host "DEV TEST FALSE"
    }
}