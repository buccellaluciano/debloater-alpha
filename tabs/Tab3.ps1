############TAB 1############
$titlePrincipal = Add-Label -control $tabPage3 -Text "Debloat" -X 0 -Y 10 -Width ($formPrincipal.Width-50) -Height 50 -ForeColor '#f54242' -Size 30
Add-Label -control $tabPage3 -Text "Ojo, aca se pueden desinstalar la mayoria de aplicaciones que vienen con el sistema, utilicelo con conciencia."  -X 0 -Y 70 -Width ($formPrincipal.Width-50) -Height 30 -ForeColor '#ffffff' -Size 10
############TITULOS###########


############TAB 3############

Add-Label -control $tabpage3 -Text "Remueve bloatware" -X 175 -Y 200 -Width 300 -Height 50 -ForeColor '#d61142' -Size 17
$btnlastbtn = Add-ImageButton -Control $tabPage3 -ImagePath $global:imagenTrollJR -X 175 -Y 250 -Width 300 -Height 200
$btnlastbtn.Add_Click{
    $global:removebloatware=0
    Confirm-Action -Message "Mira que esto quita todo el bloatware, te vas a quedar sin computadora por unos minutos" -YesAction {upackages}
}

Add-Label -control $tabpage3 -Text "Remueve telemetria" -X 575 -Y 200 -Width 300 -Height 40 -ForeColor '#d61142' -Size 17
$btntel = Add-ImageButton -Control $tabPage3 -ImagePath $global:imagenTroll -X 575 -Y 250 -Width 300 -Height 200
$btntel.Add_Click{
    Confirm-Action -Message "Mira que esto remueve toda la telemetria, microsoft no va a saber que tenes computadora! (Te vas a quedar sin computadora por unos minutos)" -YesAction {Disable-Telemetry}
    
}
