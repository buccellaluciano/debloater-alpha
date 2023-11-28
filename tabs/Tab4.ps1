$titlePrincipal = Add-Label -control $tabPage4 -Text "Creditos" -X 0 -Y 10 -Width ($formPrincipal.Width-50) -Height 50 -ForeColor '#f54242' -Size 30


Add-Label -control $tabPage4 -Text "Creditos" -X 0 -Y 10 -Width ($formPrincipal.Width-50) -Height 50 -ForeColor '#f54242' -Size 15


Add-PictureBox -control $tabPage4 -ImagePath "$global:fran" -X 0 -Y 100 -Width 300 -Height 300






#$btnlastbtn = Add-ImageButton -Control $tabPage4 -ImagePath $global:imagenTroll -X ($formPrincipal.Width / 2 - 400) -Y ($formPrincipal.Width / 2 - 500) -Width 800 -Height 500
#$btnlastbtn.Add_Click{
#    autoHideTaskbar
#}
