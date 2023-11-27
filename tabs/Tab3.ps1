
############TAB 3############
$button3 = Add-Button -Control $tabPage3 -Text "Button 2" -X 10 -Y 10 -Width 100 -Height 20 -ForeColor '#FFFFFF'
$button3.Add_Click({$global:removebloatware=1; upackages})

############TAB 3############

$btnTESTa = Add-ImageButton -Control $tabPage3 -ImagePath $global:imagenTroll -X ($formPrincipal.Width / 2 - 400) -Y ($formPrincipal.Width / 2 - 500) -Width 800 -Height 500

$btnTESTa.Add_Click{
    $global:text = "del\end_suggest.txt"
    deleteRegs
}
#$btnTESTa = Add-ImageButton -Control $tabPage3 -ImagePath "M:\Organizate\Desktop\debloater-alpha\src\img\debloaterIcon.jpg" -X 50 -Y 50 -Width 300 -Height 200
