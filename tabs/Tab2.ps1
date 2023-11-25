
####RODRIGO Y JULIAN: TIENEN QUE HACER FUNCIONES DE LOS BOTONES.###########
Add-Label -control $tab2Install -Text "Instalacion de software" -X 0 -Y 10 -Width ($formPrincipal.Width-50) -Height 50 -ForeColor '#f54242' -Size 30
Add-Label -control $tab2Install -Text "DEVTEST" -X 0 -Y 70 -Width ($formPrincipal.Width-50) -Height 30 -ForeColor '#ffffff' -Size 20



############TAB 2############
$panelNavegadores = Add-Panel -Control $tab2Install -X 10 -Y 130 -Width 300 -Height 200
$labelNav = Add-Label -control $panelNavegadores -Text "Navegadores" -X 0 -Y 5 -Width $panelNavegadores.Width -Height 25 -ForeColor '#8E44AD' -Size 15

# Agregar checkboxes al panel1 con nombres específicos
$chBoxChrome = Add-CheckBox -Control $panelNavegadores -Text "Chrome" -X 10 -Y 40 -ForeColor '#FFFFFF'
$chBoxBrave = Add-CheckBox -Control $panelNavegadores -Text "Brave" -X 10 -Y 70 -ForeColor '#FFFFFF'
$chBoxFirefox = Add-CheckBox -Control $panelNavegadores -Text "Firefox" -X 10 -Y 100 -ForeColor '#FFFFFF'
$chBoxOpera = Add-CheckBox -Control $panelNavegadores -Text "Opera" -X 10 -Y 130 -ForeColor '#FFFFFF'
$chBoxOperagx = Add-CheckBox -Control $panelNavegadores -Text "Opera GX" -X 10 -Y 160 -ForeColor '#FFFFFF'

# Agregar otro panel a la pestaña 2
$panelGpuCpuDrivers = Add-Panel -Control $tab2Install -X 10 -Y 330 -Width 300 -Height 200
Add-Label -Control $panelGpuCpuDrivers -Text "Driver de CPU/GPU" -X 0 -Y 5 -Width $panelGpuCpuDrivers.Width -Height 25 -ForeColor '#9CFF75' -Size 15

# Agregar checkboxes al panel2 con nombres específicos
$chBoxAMDChipset = Add-CheckBox -Control $panelGpuCpuDrivers -Text "Controlador AMD Ryzen Chipset" -X 10 -Y 40 -ForeColor '#FFFFFF'
$chBoxNvidiaDrivers = Add-CheckBox -Control $panelGpuCpuDrivers -Text "Nvidia Drivers" -X 10 -Y 70 -ForeColor '#FFFFFF'
$checkBox2_3 = Add-CheckBox -Control $panelGpuCpuDrivers -Text "CheckBox 3 - Desarrollo 8" -X 10 -Y 100 -ForeColor '#FFFFFF'
$checkBox2_4 = Add-CheckBox -Control $panelGpuCpuDrivers -Text "CheckBox 4 - Desarrollo 9" -X 10 -Y 130 -ForeColor '#FFFFFF'
$checkBox2_5 = Add-CheckBox -Control $panelGpuCpuDrivers -Text "CheckBox 5 - Desarrollo 10" -X 10 -Y 160 -ForeColor '#FFFFFF'



$button2 = Add-Button -Control $tab2Install -Text "Button 2" -X 100 -Y 500 -Width 200 -Height 100 -ForeColor '#FFFFFF'
$tweaksTitle = Add-Label -control $tabPage1 -Text "DEBUG TEST" -X 5 -Y 100 -Width 457 -Height 142






#####POR LAS DUDAS#######
#$chBoxDiscord DISCORD
#chBoxUbiConnect UBISOFT CONNECT