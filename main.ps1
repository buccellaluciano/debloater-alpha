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
$locatio = Get-ChildItem debloater.ps1
$Button.Add_Click({Start-Process "$locatio"})
$main_form.Controls.Add($button)
$PSVersionTable

$button = New-Object System.Windows.Forms.Button
$Button.Text = "Inciar Debloater"
$button.Location = New-Object System.Drawing.Point(100, 200)
$Button.Add_Click({$buttons})
$main_form.Controls.Add($button)

$buttons=[windows.forms.messagebox]::show('body','title','YesNo')
[System.Security.SecurityException]::show



$main_form.ShowDialog()

