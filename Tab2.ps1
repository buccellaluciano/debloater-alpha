
############TAB 2############
$panelNavegadores = Add-Panel -Control $tab2Install -X 10 -Y 10 -Width 300 -Height 200
$labelNav = Add-Label -control $panelNavegadores -Text "Navegadores" -X 0 -Y 5 -Width $panelNavegadores.Width -Height 25 -ForeColor '#8E44AD' -Size 15

# Agregar checkboxes al panel1 con nombres específicos
$chBoxChrome = Add-CheckBox -Control $panelNavegadores -Text "Chrome" -X 10 -Y 40 -ForeColor '#FFFFFF'
$chBoxBrave = Add-CheckBox -Control $panelNavegadores -Text "Brave" -X 10 -Y 70 -ForeColor '#FFFFFF'
$chBoxFirefox = Add-CheckBox -Control $panelNavegadores -Text "Firefox" -X 10 -Y 100 -ForeColor '#FFFFFF'
$chBoxOpera = Add-CheckBox -Control $panelNavegadores -Text "Opera" -X 10 -Y 130 -ForeColor '#FFFFFF'
$chBoxOperagx = Add-CheckBox -Control $panelNavegadores -Text "Opera GX" -X 10 -Y 160 -ForeColor '#FFFFFF'

# Agregar otro panel a la pestaña 2
$panel2 = Add-Panel -Control $tab2Install -X 10 -Y 250 -Width 300 -Height 200
$label2 = Add-Label -control $panel2 -Text "Panel 2" -X 5 -Y 5 -Width 457 -Height 20 -Size 15

# Agregar checkboxes al panel2 con nombres específicos
$checkBox2_1 = Add-CheckBox -Control $panel2 -Text "CheckBox 1 - Desarrollo 6" -X 10 -Y 30
$checkBox2_2 = Add-CheckBox -Control $panel2 -Text "CheckBox 2 - Desarrollo 7" -X 10 -Y 50
$checkBox2_3 = Add-CheckBox -Control $panel2 -Text "CheckBox 3 - Desarrollo 8" -X 10 -Y 70
$checkBox2_4 = Add-CheckBox -Control $panel2 -Text "CheckBox 4 - Desarrollo 9" -X 10 -Y 90
$checkBox2_5 = Add-CheckBox -Control $panel2 -Text "CheckBox 5 - Desarrollo 10" -X 10 -Y 110



$button2 = Add-Button -Control $tab2Install -Text "Button 2" -X 100 -Y 500 -Width 200 -Height 100 -ForeColor '#FFFFFF'
$tweaksTitle = Add-Label -control $tabPage1 -Text "DEBUG TEST" -X 5 -Y 100 -Width 457 -Height 142
