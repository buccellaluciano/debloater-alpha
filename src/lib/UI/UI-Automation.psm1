function Add-CheckboxesToList {
    param (
        [System.Windows.Forms.Control]$Panel,
        [string[]]$CheckboxNames,
        [int]$Spacing = 30
    )

    # Diccionario para almacenar las referencias a los checkboxes
    $checkboxes = @{}

    # Coordenadas iniciales
    $x = 10
    $y = 30

    # Altura total necesaria en función de la cantidad de checkboxes y la separación
    $totalHeight = $Spacing * $CheckboxNames.Count

    # Ajustar la altura del panel automáticamente si es necesario
    if ($Panel.Height -lt $totalHeight) {
        $Panel.Height = $totalHeight
    }

    # Agregar checkboxes al panel con la separación especificada
    foreach ($checkboxName in $CheckboxNames) {
        $checkbox = Add-CheckBox -Control $Panel -Text $checkboxName -X $x -Y $y -ForeColor '#FFFFFF'

        # Asignar el checkbox al diccionario con el nombre de variable como clave
        $checkboxes[$checkboxName] = $checkbox

        $y += $Spacing  # Aumentar la posición Y para la próxima checkbox
    }

    return $checkboxes
}
