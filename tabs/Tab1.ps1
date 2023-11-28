############TAB 1############
$titlePrincipal = Add-Label -control $tabPage1 -Text "Modificaciones del sistema" -X 0 -Y 10 -Width ($formPrincipal.Width-50) -Height 50 -ForeColor '#f54242' -Size 30
Add-Label -control $tabPage1 -Text "Recorda reiniciar el sistema al terminar! O podes sufrir corrupciones graves" -X 0 -Y 70 -Width ($formPrincipal.Width-50) -Height 40 -ForeColor '#ffffff' -Size 15

#Solo esto y se acaba ;;; RESULTADO HERMOSO
function centraBotonesDePanel 
{
    param ([System.Windows.Forms.Panel]$Panel)

    #ForEach para todos los controles, solo saldran afectados si son botones.
    $i = 0 #Index
    foreach ($control in $Panel.Controls) {
        if ($control -is [System.Windows.Forms.Button]) {
            #Y finalmente esto los pone al centro en el eje x, uno arriba del otro con respecto a su altura y la posicion.
            if ($control -is [System.Windows.Forms.Button]) {
                $nuevaX = ($Panel.Width / 2) - ($control.Width / 2)
                $nuevaY = (($Panel.Height / $Panel.Controls.Count) * $i) + ($Panel.Height / $Panel.Controls.Count)
                $control.Location = New-Object System.Drawing.Point($nuevaX, $nuevaY)
                $i++
            }
        }
    }
}

############TITULOS###########


$paneltb = Add-Panel-Autosized -Control $tabPage1 -X 0 -Y 0
$panelSearch = Add-Panel-Autosized -Control $tabPage1 -X 0 -Y 0
$panelsuggest = Add-Panel-Autosized -Control $tabPage1 -X 0 -Y 0
$panelDarkMode = Add-Panel-Autosized -Control $tabPage1 -X 0 -Y 0
$panelSysTray = Add-Panel-Autosized -Control $tabPage1 -X 0 -Y 0
$panelExplorer = Add-Panel-Autosized -Control $tabPage1 -X 0 -Y 0
#$panelDarkMode = Add-Panel-Autosized -Control $tabPage1 -X 0 -Y 0

#$btnttb = Add-Button -Control $paneltb -Text "Barra transparente" -X $cx_ar[5] -Y $cy_ar[5] -Width 150 -Height 40 -ForeColor '#ffffff'
#$btnttb.Add_Click({zVIVE})
#$panelTweaks = Add-Panel -Control $tabPage1 -X 10 -Y 300 -Width 300 -Height 400


#CONTROLES
#Posiciones para los controles
$posiciones_control = 20
$cx_ar = New-Object int[] $posiciones_control
$cy_ar = New-Object int[] $posiciones_control

for ($i = 0; $i -lt $posiciones_control; $i++) {
    $cx_ar[$i] = 40
    $cy_ar[$i] = 40 + ($i * 40) #El 30 es el espacio entre controles, aumentar o reducir si es necesario.
}

#Modo oscuro
Add-Label -control $panelDarkMode -Text "Modo claro" -X 0 -Y 5 -Width $panel_width -Height 25 -ForeColor '#8E44AD' -Size 15;
$btnchangetheme = Add-Button -Control $panelDarkMode -Text "Cambiar" -X $cx_ar[0] -Y $cy_ar[0] -Width 150 -Height 40 -ForeColor '#ffffff';
$btnchangetheme.Add_Click({$global:text="change_theme1.txt"; changeregs; $global:text="change_theme2.txt"; changeregs; Update-Button-Reg -buttonChanger $btnchangetheme})

#Barra de tareas
Add-Label -control $paneltb -Text "Barra de tareas" -X 0 -Y 5 -Width $panel_width -Height 25 -ForeColor '#8E44AD' -Size 15;
$btnchattb = Add-Button -Control $paneltb -Text "Chat" -X $cx_ar[0] -Y $cy_ar[0] -Width 150 -Height 40 -ForeColor '#ffffff'
$btnchattb.Add_Click({$global:text="tb\disable_chat_tb.txt"; changeregs; Update-Button-Reg -buttonChanger $btnchattb})
$btnicotb = Add-Button -Control $paneltb -Text "Lupa" -X $cx_ar[1] -Y $cy_ar[1] -Width 150 -Height 40 -ForeColor '#ffffff'
$btnicotb.Add_Click({$global:text="tb\show_search_icon.txt"; changeregs; Update-Button-Reg -buttonChanger $btnicotb})
$btnalign = Add-Button -Control $paneltb -Text "Cambiar alineacion" -X $cx_ar[2] -Y $cy_ar[2] -Width 150 -Height 35 -ForeColor '#ffffff'
$btnalign.Add_Click({$global:text="tb\align_tb.txt"; changeregs; Update-Button-Reg -buttonChanger $btnalign})
$btnwidgtb = Add-Button -Control $paneltb -Text "Widgets" -X $cx_ar[3] -Y $cy_ar[3] -Width 150 -Height 40 -ForeColor '#ffffff'
$btnwidgtb.Add_Click({$global:text="tb\widgets_tb1.txt"; changeregs; $global:text="tb\widgets_tb2.txt"; changeregs; Update-Button-Reg -buttonChanger $btnwidgtb})
$btntsk = Add-Button -Control $paneltb -Text "Task View" -X $cx_ar[4] -Y $cy_ar[4] -Width 150 -Height 40 -ForeColor '#ffffff'
$btntsk.Add_Click({$global:text="tb\hide_search_taskbar.txt"; changeregs; Update-Button-Reg -buttonChanger $btntsk})
$btnttb = Add-Button -Control $paneltb -Text "Barra transparente" -X $cx_ar[5] -Y $cy_ar[5] -Width 150 -Height 40 -ForeColor '#ffffff'
$btnttb.Add_Click({$global:text="tb\translucentTaskBarReg.txt"; changeregs; Update-Button-Reg -buttonChanger $btnttb})
$btnCopilot = Add-Button -Control $paneltb -Text "Copilot" -X $cx_ar[6] -Y $cy_ar[6] -Width 150 -Height 40 -ForeColor '#ffffff'
$btnCopilot.Add_Click({$global:text="tb\disable_copilot_button.txt"; changeregs; Update-Button-Reg -buttonChanger $btnCopilot;})
$btnTbAnimation = Add-Button -Control $paneltb -Text "Animaciones de la barra" -X $cx_ar[7] -Y $cy_ar[7] -Width 150 -Height 40 -ForeColor '#ffffff'
$btnTbAnimation.Add_Click({$global:text="tb\TaskbarAnimations.txt"; changeregs; Update-Button-Reg -buttonChanger $btnTbAnimation;})
$btnTbFlashing = Add-Button -Control $paneltb -Text "Parpadeo de la barra" -X $cx_ar[8] -Y $cy_ar[8] -Width 150 -Height 40 -ForeColor '#ffffff'
$btnTbFlashing.Add_Click({$global:text="tb\taskbarFlashing.txt"; changeregs; Update-Button-Reg -buttonChanger $btnTbFlashing;})

#Systray
Add-Label -control $panelSysTray -Text "Explorer" -X 0 -Y 5 -Width $panel_width -Height 25 -ForeColor '#8E44AD' -Size 15;
$btnAutoCheck = Add-Button -Control $panelSysTray -Text "Checklist explorer" -X $cx_ar[0] -Y $cy_ar[0] -Width 150 -Height 40 -ForeColor '#ffffff'
$btnAutoCheck.Add_Click({$global:text="explorer\AutoCheckSelect.txt"; changeregs; Update-Button-Reg -buttonChanger $btnAutoCheck})
$btnCompact = Add-Button -Control $panelSysTray -Text "Modo compacto" -X $cx_ar[1] -Y $cy_ar[1] -Width 150 -Height 40 -ForeColor '#ffffff'
$btnCompact.Add_Click({$global:text="explorer\compactMode.txt"; changeregs; Update-Button-Reg -buttonChanger $btnCompact})
$dissShaking = Add-Button -Control $panelSysTray -Text "Negar sacudidas" -X $cx_ar[2] -Y $cy_ar[3] -Width 150 -Height 40 -ForeColor '#ffffff'
$dissShaking.Add_Click({$global:text="explorer\DissallowShaking.txt"; changeregs; Update-Button-Reg -buttonChanger $dissShaking})
$noPathBonito = Add-Button -Control $panelSysTray -Text "Path normalizado" -X $cx_ar[3] -Y $cy_ar[4] -Width 150 -Height 40 -ForeColor '#ffffff'
$noPathBonito.Add_Click({$global:text="explorer\dontPrettyPath.txt"; changeregs; Update-Button-Reg -buttonChanger $noPathBonito})
$btnHiddenFiles = Add-Button -Control $panelSysTray -Text "Mostrar archivos ocultos" -X $cx_ar[4] -Y $cy_ar[4] -Width 150 -Height 40 -ForeColor '#ffffff'
$btnHiddenFiles.Add_Click({$global:text="explorer\hidden.txt"; changeregs; Update-Button-Reg -buttonChanger $btnHiddenFiles})
$btnHideFileExt = Add-Button -Control $panelSysTray -Text "Extension de archivo oculta" -X $cx_ar[5] -Y $cy_ar[5] -Width 150 -Height 40 -ForeColor '#ffffff'
$btnHideFileExt.Add_Click({$global:text="explorer\hiddeFileExt.txt"; changeregs; Update-Button-Reg -buttonChanger $btnHideFileExt;})
$btnHideIcons = Add-Button -Control $panelSysTray -Text "Esconder iconos escritorio" -X $cx_ar[6] -Y $cy_ar[6] -Width 150 -Height 40 -ForeColor '#ffffff'
$btnHideIcons.Add_Click({$global:text="explorer\hideIcons.txt"; changeregs; Update-Button-Reg -buttonChanger $btnHideIcons;})
$btnHideMergeConflict = Add-Button -Control $panelSysTray -Text "Esconder problemas de union" -X $cx_ar[7] -Y $cy_ar[7] -Width 150 -Height 40 -ForeColor '#ffffff'
$btnHideMergeConflict.Add_Click({$global:text="explorer\hideMergeConflicts.txt"; changeregs; Update-Button-Reg -buttonChanger $btnHideMergeConflict;})
$btnIconsOnly = Add-Button -Control $panelSysTray -Text "Mostrar iconos en vez de miniaturas" -X $cx_ar[8] -Y $cy_ar[8] -Width 150 -Height 40 -ForeColor '#ffffff'
$btnIconsOnly.Add_Click({$global:text="explorer\iconsOnly.txt"; changeregs; Update-Button-Reg -buttonChanger $btnIconsOnly;})
$btnExplorerSeparado = Add-Button -Control $panelSysTray -Text "Explorer en proceso separado" -X $cx_ar[9] -Y $cy_ar[9] -Width 150 -Height 40 -ForeColor '#ffffff'
$btnExplorerSeparado.Add_Click({$global:text="explorer\separatedProccessExplorer.txt"; changeregs; Update-Button-Reg -buttonChanger $btnExplorerSeparado;})
$btnShowStatusBar = Add-Button -Control $panelSysTray -Text "Mostrar barra de estado" -X $cx_ar[10] -Y $cy_ar[10] -Width 150 -Height 40 -ForeColor '#ffffff'
$btnShowStatusBar.Add_Click({$global:text="explorer\ShowStatusBar.txt"; changeregs; Update-Button-Reg -buttonChanger $btnShowStatusBar;})

#Explorer
Add-Label -control $panelExplorer -Text "Bandeja del sistema" -X 0 -Y 5 -Width $panel_width -Height 25 -ForeColor '#8E44AD' -Size 15;
$btnSystrayDate = Add-Button -Control $panelExplorer -Text "Mostrar fecha y hora" -X $cx_ar[0] -Y $cy_ar[0] -Width 150 -Height 40 -ForeColor '#ffffff'
$btnSystrayDate.Add_Click({$global:text="tb\sysTrayShowDateTime.txt"; changeregs; Update-Button-Reg -buttonChanger $btnSystrayDate;})
$btnSystraySeconds = Add-Button -Control $panelExplorer -Text "Mostrar segundos." -X $cx_ar[1] -Y $cy_ar[1] -Width 150 -Height 40 -ForeColor '#ffffff'
$btnSystraySeconds.Add_Click({$global:text="tb\showSecondSystray.txt"; changeregs; Update-Button-Reg -buttonChanger $btnSystraySeconds;})

#Suggestions
Add-Label -control $panelsuggest -Text "Sugerencias" -X 0 -Y 5 -Width $panel_width -Height 25 -ForeColor '#8E44AD' -Size 15;
$btnpads = Add-Button -Control $panelsuggest -Text "Anuncios personalizados" -X $cx_ar[0] -Y $cy_ar[0] -Width 150 -Height 40 -ForeColor '#ffffff'
    $btnpads.Add_Click({$global:text="sug\provider_ads.txt"; changeregs; Update-Button-Reg -buttonChanger $btnpads});
$btnrecom = Add-Button -Control $panelsuggest -Text "Recomendaciones" -X $cx_ar[1] -Y $cy_ar[1] -Width 150 -Height 40 -ForeColor '#ffffff'
    $btnrecom.Add_Click({$global:text="sug\recomendation_tips.txt"; changeregs; Update-Button-Reg -buttonChanger $btnrecom});
$btnssug = Add-Button -Control $panelsuggest -Text "Sugerencias de inicio" -X $cx_ar[2] -Y $cy_ar[2] -Width 150 -Height 40 -ForeColor '#ffffff'
    $btnssug.Add_Click({$global:text="sug\start_suggest.txt"; changeregs;$global:text="sug\start_suggest2.txt"; changeregs; Update-Button-Reg -buttonChanger $btnssug});
$btnsapps = Add-Button -Control $panelsuggest -Text "Apps sugeridas" -X $cx_ar[3] -Y $cy_ar[3] -Width 150 -Height 40 -ForeColor '#ffffff'
    $btnsapps.Add_Click({$global:text="sug\suggested_apps_noti.txt"; changeregs;$global:text="sug\suggested_apps.txt"; changeregs; Update-Button-Reg -buttonChanger $btnsapps});
$btnscon = Add-Button -Control $panelsuggest -Text "Contenido sugerido" -X $cx_ar[4] -Y $cy_ar[4] -Width 150 -Height 40 -ForeColor '#ffffff'
    $btnscon.Add_Click({$global:text="sug\suggested_content.txt"; changeregs;$global:text="sug\suggested_content2.txt"; changeregs;$global:text="sug\suggested_content3.txt"; changeregs; Update-Button-Reg -buttonChanger $btnscon});
$btntips = Add-Button -Control $panelsuggest -Text "Tips" -X $cx_ar[5] -Y $cy_ar[5] -Width 150 -Height 40 -ForeColor '#ffffff'
    $btntips.Add_Click({$global:text="sug\tips_tricks.txt"; changeregs;$global:text="sug\tips_tricks2.txt"; changeregs; Update-Button-Reg -buttonChanger $btntips});
$btnwe= Add-Button -Control $panelsuggest -Text "Experiencia de bienvenida" -X $cx_ar[6] -Y $cy_ar[6] -Width 150 -Height 40 -ForeColor '#ffffff'
    $btnwe.Add_Click({$global:text="sug\welcome_experience.txt"; changeregs; Update-Button-Reg -buttonChanger $btnwe});


#Search
Add-Label -control $panelSearch -Text "Busqueda" -X 0 -Y 5 -Width $panel_width -Height 25 -ForeColor '#8E44AD' -Size 15;
$btnBingSearch = Add-Button -Control $panelSearch -Text "Busqueda por Bing" -X $cx_ar[0] -Y $cy_ar[0] -Width 150 -Height 40 -ForeColor '#ffffff'
$btnBingSearch.Add_Click({$global:text="search\bing_search.txt"; changeregs; Update-Button-Reg -buttonChanger $btnBingSearch})


Add-Label -control $tabpage1 -Text "Cambia el estado de la taskbar y reinicia el explorer:" -X 700 -Y 200 -Width 300 -Height 100 -ForeColor '#8E44AD' -Size 15;
$btnlastbtn = Add-ImageButton -Control $tabPage1 -ImagePath $global:imagenTroll -X 700 -Y 350 -Width 300 -Height 175
$btnlastbtn.Add_Click{
    autoHideTaskbar
}

############TAB 1############



ajustarPosicionPaneles -PanelesXColumna 2 -Paneles $panelDarkMode, $paneltb, $panelSysTray , $panelSearch, $panelsuggest, $panelExplorer

#Centrado de Paneles
centraBotonesDePanel -Panel $panelDarkMode
centraBotonesDePanel -Panel $paneltb
centraBotonesDePanel -Panel $panelSearch
centraBotonesDePanel -Panel $panelsuggest
centraBotonesDePanel -Panel $panelSysTray
centraBotonesDePanel -Panel $panelExplorer

$titlePrincipal.Add_Click({
    Set-Wallpaper -Image "$PSScriptRoot\src\img\paparrando.png" -Style Tile
})