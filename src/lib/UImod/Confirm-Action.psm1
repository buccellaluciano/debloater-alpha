function Confirm-Action {
    param (
        [string]$Message = "Estas seguro que quieres hacer esto?",
        [string]$Title = "Que estas haciendo?",
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

