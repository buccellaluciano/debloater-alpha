function autoHideTaskbar {


$p = 'HKCU:SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\StuckRects3'
[ref]$v = (Get-ItemProperty -Path $p).Settings

write-host "DEV QUE APRETASTE"
write-host "DEV $($v.Value)"


if ($v.Value[8] -eq 123) {
    $v.Value[8]= 122
    Set-ItemProperty -Path $p -Name Settings -Value $v.Value
    Stop-Process -Force -ProcessName explorer
}

if ($v.Value[8] -eq 122) {
    $v.Value[8]= 123
        Set-ItemProperty -Path $p -Name Settings -Value $v.Value
        Stop-Process -Force -ProcessName explorer
}



}
