############TAB 1############
$titlePrincipal = Add-Label -control $tabPage1 -Text "Modificaciones del sistema" -X 0 -Y 10 -Width ($formPrincipal.Width-50) -Height 50 -ForeColor '#f54242' -Size 30
Add-Label -control $tabPage1 -Text "Soto-Buccella-Gorno-Sandes" -X 0 -Y 70 -Width ($formPrincipal.Width-50) -Height 30 -ForeColor '#ffffff' -Size 20
############TITULOS###########


$paneltb = Add-Panel-Autosized -Control $tabPage1 -X 0 -Y 0
$panelSearch = Add-Panel-Autosized -Control $tabPage1 -X 0 -Y 0


#$panelTweaks = Add-Panel -Control $tabPage1 -X 10 -Y 300 -Width 300 -Height 400


#CONTROLES
#Posiciones para los controles
$posiciones_control = 20
$cx_ar = New-Object int[] $posiciones_control
$cy_ar = New-Object int[] $posiciones_control

#Definicion automatica para las posiciones de los controles. Soporta hasta 5 posiciones.
for ($i = 0; $i -lt $posiciones_control; $i++) {
    $cx_ar[$i] = 40
    $cy_ar[$i] = 40 + ($i * 30) #El 30 es el espacio entre controles, aumentar o reducir si es necesario.
}

#Modo oscuro
Add-Label -control $panelDarkMode -Text "Modo oscuro" -X 0 -Y 5 -Width $panel_width -Height 25 -ForeColor '#8E44AD' -Size 15;
$btnchangetheme = Add-Button -Control $panelDarkMode -Text "Habilitar/Deshabilitar" -X $cx_ar[0] -Y $cy_ar[0] -Width 100 -Height 30 -ForeColor '#ffffff';
$btnchangetheme.Add_Click({$global:text="change_theme1.txt"; changeregs; $global:text="change_theme2.txt"; changeregs})

#Barra de tareas
Add-Label -control $paneltb -Text "Barra de tareas" -X 0 -Y 5 -Width $panel_width -Height 25 -ForeColor '#8E44AD' -Size 15;
$btnchattb = Add-Button -Control $paneltb -Text "Chat" -X $cx_ar[0] -Y $cy_ar[0] -Width 150 -Height 30 -ForeColor '#ffffff'
$btnchattb.Add_Click({$global:text="tb\disable_chat_tb.txt"; changeregs; Update-Button-Reg -buttonChanger $btnchattb})
$btnicotb = Add-Button -Control $paneltb -Text "Lupa" -X $cx_ar[1] -Y $cy_ar[1] -Width 150 -Height 30 -ForeColor '#ffffff'
$btnicotb.Add_Click({$global:text="tb\show_search_icon.txt"; changeregs; Update-Button-Reg -buttonChanger $btnicotb})
$btnalign = Add-Button -Control $paneltb -Text "Cambiar alineacion" -X $cx_ar[2] -Y $cy_ar[2] -Width 150 -Height 35 -ForeColor '#ffffff'
$btnalign.Add_Click({$global:text="tb\align_tb.txt"; changeregs; Update-Button-Reg -buttonChanger $btnalign})
$btnwidgtb = Add-Button -Control $paneltb -Text "Widgets" -X $cx_ar[3] -Y $cy_ar[3] -Width 150 -Height 30 -ForeColor '#ffffff'
$btnwidgtb.Add_Click({$global:text="tb\widgets_tb1.txt"; changeregs; $global:text="tb\widgets_tb2.txt"; changeregs; Update-Button-Reg -buttonChanger $btnwidgtb})
$btntsk = Add-Button -Control $paneltb -Text "Task View" -X $cx_ar[4] -Y $cy_ar[4] -Width 150 -Height 30 -ForeColor '#ffffff'
$btntsk.Add_Click({$global:text="tb\hide_search_taskbar.txt"; changeregs; Update-Button-Reg -buttonChanger $btntsk})
$btnttb = Add-Button -Control $paneltb -Text "Barra transparente" -X $cx_ar[5] -Y $cy_ar[5] -Width 150 -Height 30 -ForeColor '#ffffff'
$btnttb.Add_Click({zVIVE})
$btnCopilot = Add-Button -Control $paneltb -Text "Copilot" -X $cx_ar[6] -Y $cy_ar[6] -Width 150 -Height 30 -ForeColor '#ffffff'
$btnCopilot.Add_Click({$global:text="tb\disable_copilot_button.txt"; changeregs; Update-Button-Reg -buttonChanger $btnCopilot;[Console]::Beep()})


#Suggestions
$btnends = Add-Button -Control $paneltb -Text "Sugerencias de cierre" -X $cx_ar[0] -Y $cy_ar[0] -Width 80 -Height 30 -ForeColor '#ffffff'
$btnends.Add_Click({$global:text="tb\end_suggest.txt"; changeregs;})
$btnpads = Add-Button -Control $paneltb -Text "Anuncios personalizados" -X $cx_ar[1] -Y $cy_ar[1] -Width 80 -Height 30 -ForeColor '#ffffff'
$btnpads.Add_Click({$global:text="tb\provider_ads.txt"; changeregs})
$btnrecom = Add-Button -Control $paneltb -Text "Recomendaciones" -X $cx_ar[2] -Y $cy_ar[2] -Width 80 -Height 30 -ForeColor '#ffffff'
$btnrecom.Add_Click({$global:text="tb\recomendation_tips.txt"; changeregs})
$btnssug = Add-Button -Control $paneltb -Text "Sugerencias de inicio" -X $cx_ar[3] -Y $cy_ar[3] -Width 80 -Height 30 -ForeColor '#ffffff'
$btnssug.Add_Click({$global:text="tb\start_suggest.txt"; changeregs;$global:text="tb\start_suggest2.txt"; changeregs;})
$btnsapps = Add-Button -Control $paneltb -Text "Apps sugeridas" -X $cx_ar[4] -Y $cy_ar[4] -Width 80 -Height 30 -ForeColor '#ffffff'
$btnsapps.Add_Click({$global:text="tb\suggested_apps_noti.txt"; changeregs;$global:text="tb\suggested_apps.txt"; changeregs;})
$btnsapps = Add-Button -Control $paneltb -Text "Contenido sugerido" -X $cx_ar[5] -Y $cy_ar[5] -Width 80 -Height 30 -ForeColor '#ffffff'
$btnsapps.Add_Click({$global:text="tb\suggested_content.txt"; changeregs;$global:text="tb\suggested_content2.txt"; changeregs;$global:text="tb\suggested_content3.txt"; changeregs})
$btntips = Add-Button -Control $paneltb -Text "Tips" -X $cx_ar[6] -Y $cy_ar[6] -Width 80 -Height 30 -ForeColor '#ffffff'
$btntips.Add_Click({$global:text="tb\tips_tricks.txt"; changeregs;$global:text="tb\tips_tricks2.txt"; changeregs})
$btnwe= Add-Button -Control $paneltb -Text "Experiencia de bienvenida" -X $cx_ar[7] -Y $cy_ar[7] -Width 80 -Height 30 -ForeColor '#ffffff'
$btnwe.Add_Click({$global:text="tb\welcome_experience.txt"; changeregs})


#Search
Add-Label -control $panelSearch -Text "Busqueda" -X 0 -Y 5 -Width $panel_width -Height 25 -ForeColor '#8E44AD' -Size 15;
$btnBingSearch = Add-Button -Control $panelSearch -Text "Busqueda por Bing" -X $cx_ar[0] -Y $cy_ar[0] -Width 150 -Height 30 -ForeColor '#ffffff'
$btnBingSearch.Add_Click({$global:text="search\bing_search.txt"; changeregs; Update-Button-Reg -buttonChanger $btnBingSearch})

$btnends.Add_Click({$global:text="tb\recomendation_tips.txt"; changeregs;$global:text="tb\start_suggest.txt"; changeregs;$global:text="tb\start_suggest2.txt"; changeregs;$global:text="tb\suggested_apps_noti.txt"; changeregs;$global:text="tb\suggested_apps.txt"; changeregs;$global:text="tb\suggested_content.txt"; changeregs;$global:text="tb\suggestedcontent2.txt"; changeregs;$global:text="tb\suggested_content3.txt"; changeregs;$global:text="tb\tips_tricks.txt"; changeregs;$global:text="tb\tips_tricks2.txt"; changeregs;$global:text="tb\welcome_experience.txt"; changeregs; Update-Button-Reg -buttonChanger $btnchattb})


############TAB 1############




ajustarPosicionPaneles -Paneles $paneltb, $panelSearch
$titlePrincipal.Add_Click({
    Set-Wallpaper -Image "$PSScriptRoot\src\img\paparrando.png" -Style Tile
})