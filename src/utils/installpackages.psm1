function INSTALAR-PACK {
    param (
        [string]$Pack
    )

    $job = Start-Job -ScriptBlock {
        param($Pack)
        $install = "winget install $Pack --accept-source-agreements --accept-package-agreements"
        Write-Host("Installing $Pack")
        Invoke-Expression -Command $install
        $Result = [System.Windows.MessageBox]::Show("Package $Pack installed successfully.", "Installed", "Ok")
    } -ArgumentList $Pack

    # Espera a que el trabajo en segundo plano termine (sin bloquear la interfaz de usuario)

}