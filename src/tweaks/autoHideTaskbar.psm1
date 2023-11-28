function autoHideTaskbar {

$p = 'HKCU:SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\StuckRects3'
$v = (Get-ItemProperty -Path $p).Settings

write-host "DEV QUE APRETASTE"
write-host "DEV $v[8]"


if ($v[8] -eq 122) {
        $v[8]= 123
        Set-ItemProperty -Path $p -Name Settings -Value $v
        Stop-Process -Force -ProcessName explorer
    elseif ($v[8] -eq 123) {
        $v[8]=122
        Set-ItemProperty -Path $p -Name Settings -Value $v
        Stop-Process -f -ProcessName explorer
    }
}
}
