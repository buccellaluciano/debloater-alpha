
############TAB 3############
$button3 = Add-Button -Control $tabPage3 -Text "Button 2" -X 10 -Y 10 -Width 100 -Height 20 -ForeColor '#FFFFFF'

$panelExterno = Add-Panel -Control $tabPage3 -X 0 -Y 0 -Width 500 -Height 1500
$panelExterno.BackColor = [System.Drawing.ColorTranslator]::FromHtml("#2c2c2c")
############TAB 3############
