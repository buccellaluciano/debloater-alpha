function Confirm-Action {
    param (
        [string]$Message,
        [string]$Title,
        [scriptblock]$YesAction,
        [scriptblock]$NoAction
    )

    $result = [windows.forms.messagebox]::show($Message, $Title, 'YesNo')

    if ($result -eq 'Yes') {
        if ($YesAction) {
            Invoke-Command -ScriptBlock $YesAction
        }
    } elseif ($result -eq 'No') {
        if ($NoAction) {
            Invoke-Command -ScriptBlock $NoAction
        }
    }
}

# Ejemplo de uso
Show-DecisionMessageBox -Message '¿Quieres ejecutar esta acción?' -Title 'Confirmación' -YesAction {
    Write-Host 'Ejecutando la acción...'
    # Coloca aquí el código que deseas ejecutar si el usuario elige 'Yes'
} -NoAction {
    Write-Host 'No se realizará ninguna acción.'
    # Puedes colocar aquí cualquier lógica que desees para el caso 'No'
}
