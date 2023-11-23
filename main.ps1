Add-Type -AssemblyName System.Windows.Forms

$formPrincipal = New-Object System.Windows.Forms.Form
$formPrincipal.Text = 'Super Debloater!'
$formPrincipal.Size = New-Object System.Drawing.Size(800,600)
$formPrincipal.StartPosition = 'CenterScreen'

$iconPath = ".\img\debloaterIcon.ico"
$icon = [System.Drawing.Icon]::ExtractAssociatedIcon($iconPath)
$formPrincipal.Icon = $icon

$formPrincipal.BackColor = [System.Drawing.Color]::LightGray


Import-Module -DisableNameChecking .\src\lib\UI\UI-Creator.psm1 -Force

$tabControl = Add-TabControl -Form $formPrincipal -X 0 -Y 0 -Width 800 -Height 600

$tabPage1 = Add-TabPage -TabControl $tabControl -Text "Tweaks"
$tabPage2 = Add-TabPage -TabControl $tabControl -Text "Install"
$tabPage3 = Add-TabPage -TabControl $tabControl -Text "DEBUG"

############TAB 1############
##GROUPBOX1##
$GrBox_UninWindows = Add-GroupBox -Control $tabPage1 -Text "Developer test" -X 5 -Y 5 -Width 300 -Height 400
$GrBox_UninWindows.Controls.Add($butUninstalWindows) #Agregar foreach, que recorra todo lo que quiera ser agregado en el groupbox
##GROUPBOX1##
$butUninstalWindows = Add-Button -Control $tabPage1 -Text "Developer test" -X 10 -Y 10 -Width 100 -Height 20



############TAB 1############








############TAB 2############
$button2 = Add-Button -Control $tabPage2 -Text "Button 2" -X 10 -Y 10 -Width 100 -Height 20
############TAB 3############





############TAB 3############
$button3 = Add-Button -Control $tabPage3 -Text "Button 2" -X 10 -Y 10 -Width 100 -Height 20
############TAB 3############

#$buttons=[windows.forms.messagebox]::show('body','title','YesNo')
#[System.Security.SecurityException]::show


$butUninstalWindows.Add_Click( {
    Write-Host "DevTest"
})

$formPrincipal.ShowDialog()

