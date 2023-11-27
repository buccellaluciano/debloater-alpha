function Update-Button-Status {
    param (
        [System.Windows.Forms.Control]$button,
        [string]$variableObserved,
        [string]$textInicial,
        [string]$TextDespues
        #POR AHORA NO , PERO EN CASO DE QUERER QUE LOS BOTONES CAMBIEN A COLORES DISTINTOS DE RED Y GREEN, 
        #CREAR 2 VARIABLES DE STRING, COLORINICIAL, COLORDESPUES Y REEMPLAZAR

    )
    if ($variableBoton) {
        $button.Text = "$textInicial"
        $button.BackColor = [System.Drawing.Color]::Red
    } else {
        $button.Text = "TextDespues"
        $button.BackColor = [System.Drawing.Color]::Green
    }
}