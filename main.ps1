Add-Type -assembly System.Windows.Forms
$main_form = New-Object System.Windows.Forms.Form
$main_form.Text ='Debloater'
$main_form.Width = 800
$main_form.Height = 400
$main_form.AutoSize = $true

$iconPath = ".\img\debloaterIcon.ico"
$icon = [System.Drawing.Icon]::ExtractAssociatedIcon($iconPath)
$main_form.Icon = $icon

$button = New-Object System.Windows.Forms.Button
$Button.Text = "Inciar Debloater"
$button.Location = New-Object System.Drawing.Point(400, 400)
$Button.Add_Click({
    $location = Get-ChildItem main.ps1
    Write-Host $location
    

})
$main_form.Controls.Add($button)
$PSVersionTable



$main_form.ShowDialog()

