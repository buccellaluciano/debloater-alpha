function autoHideTaskbar {
    $p = 'HKCU:SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\StuckRects3'
    $v = (Get-ItemProperty -Path $p).Settings

    Write-Host "Valor Original: $($v[8])"

    if ($v[8] -eq 123) {
        $v[8] = 122
    } elseif ($v[8] -eq 122) {
        $v[8] = 123
    }

    Set-ItemProperty -Path $p -Name Settings -Value $v
    Stop-Process -Force -Name explorer

    Write-Host "Valor actualizado: $($v[8])"
}

