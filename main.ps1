Add-Type -assembly System.Windows.Forms
$main_form = New-Object System.Windows.Forms.Form
$main_form.Text ='GUI for my PoSh script'
$main_form.Width = 800
$main_form.Height = 400
$main_form.AutoSize = $true

$button = New-Object System.Windows.Forms.Button
$Button.Text = "Coxis"
$button.Location = New-Object System.Drawing.Point(400, 400)


$Button.Add_Click({C:\Users\miste\OneDrive\Escritorio\Desktop\github\debloater-alpha\disable-copilot.reg})

$main_form.Controls.Add($button)




$main_form.ShowDialog()