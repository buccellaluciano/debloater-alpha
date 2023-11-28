$titlePrincipal = Add-Label -control $tabPage3 -Text "DEBUG MODE" -X 0 -Y 10 -Width ($formPrincipal.Width-50) -Height 50 -ForeColor '#f54242' -Size 30


$btnlastbtn = Add-ImageButton -Control $tabPage4 -ImagePath $global:imagenTroll -X ($formPrincipal.Width / 2 - 400) -Y ($formPrincipal.Width / 2 - 500) -Width 800 -Height 500
$btnlastbtn.Add_Click{
    autoHideTaskbar
}
