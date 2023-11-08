Add-Type -assembly System.Windows.Forms
$main_form = New-Object System.Windows.Forms.Form
$main_form.Text ='GUI for my PoSh script'
$main_form.Width = 800
$main_form.Height = 400
$main_form.AutoSize = $true

$button = New-Object System.Windows.Forms.Button
$Button.Text = "Desactivar Boton de busqueda"
$button.Location = New-Object System.Drawing.Point(400, 400)
$Button.Add_Click({./regfiles\disable-searchicon.reg})
$main_form.Controls.Add($button)

$button = New-Object System.Windows.Forms.Button
$Button.Text = "Activar Boton de busqueda"
$button.Location = New-Object System.Drawing.Point(300, 300)
$Button.Add_Click({./regfiles\enable-searchicon.reg})
$main_form.Controls.Add($button)


$button = New-Object System.Windows.Forms.Button
$Button.Text = "Activar Barra"
$button.Location = New-Object System.Drawing.Point(200, 200)
$Button.Add_Click({./regfiles\enable-searchbox.reg})
$main_form.Controls.Add($button)


$alpath = ".\applist.txt"
$Applist = Get-Content -Path $alpath



$i = 1 
foreach ($Line in $Applist) {
    Write-Host "$Line $i :";
    $i++
}



$main_form.ShowDialog()