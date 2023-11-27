############TAB 1############
$titlePrincipal = Add-Label -control $tabPage3 -Text "Debloat" -X 0 -Y 10 -Width ($formPrincipal.Width-50) -Height 50 -ForeColor '#f54242' -Size 30
Add-Label -control $tabPage3 -Text "Ojo, aca se pueden desinstalar la mayoria de aplicaciones que vienen con el sistema, utilicelo con conciencia."  -X 0 -Y 70 -Width ($formPrincipal.Width-50) -Height 30 -ForeColor '#ffffff' -Size 10
############TITULOS###########


############TAB 3############
$btnlastbtn = Add-ImageButton -Control $tabPage3 -ImagePath $global:imagenTroll -X ($formPrincipal.Width / 2 - 400) -Y ($formPrincipal.Width / 2 - 500) -Width 800 -Height 500
$btnlastbtn.Add_Click{
    $global:removebloatware=1
    Confirm-Action -Message "Mira que esto quita todo el bloatware, te vas a quedar sin computadora por unos minutos" -YesAction {upackages}
}

############TAB 3############

$btnTESTa = Add-ImageButton -Control $tabPage3 -ImagePath $global:imagenTroll -X 50 -Y 50 -Width 300 -Height 200
#$btnTESTa = Add-ImageButton -Control $tabPage3 -ImagePath "M:\Organizate\Desktop\debloater-alpha\src\img\debloaterIcon.jpg" -X 50 -Y 50 -Width 300 -Height 200
