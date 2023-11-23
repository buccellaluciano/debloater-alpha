function Add-TabControl {
    param (
        [System.Windows.Forms.Form]$Form,
        [int]$X,
        [int]$Y,
        [int]$Width,
        [int]$Height
    )

    $tabControl = New-Object System.Windows.Forms.TabControl
    $tabControl.Location = New-Object System.Drawing.Point($X, $Y)
    $tabControl.Size = New-Object System.Drawing.Size($Width, $Height)

    $Form.Controls.Add($tabControl)

    return $tabControl
}

function Add-TabPage {
    param (
        [System.Windows.Forms.TabControl]$TabControl,
        [string]$Text
    )

    $tabPage = New-Object System.Windows.Forms.TabPage
    $tabPage.Text = $Text

    $TabControl.Controls.Add($tabPage)

    return $tabPage
}

function Add-Button {
    param (
        [System.Windows.Forms.Control]$Control,
        [string]$Text,
        [int]$X,
        [int]$Y,
        [int]$Width,
        [int]$Height
    )

    $newControl = New-Object System.Windows.Forms.Button
    $newControl.Location = New-Object System.Drawing.Point($X, $Y)
    $newControl.Size = New-Object System.Drawing.Size($Width, $Height)
    $newControl.Text = $Text

    $Control.Controls.Add($newControl)

    return $newControl
}

function Add-GroupBox {
    param (
        [System.Windows.Forms.Control]$Control,
        [string]$Text,
        [int]$X,
        [int]$Y,
        [int]$Width,
        [int]$Height
    )

    $newGroupbox = New-Object System.Windows.Forms.GroupBox
    $newGroupbox.Location = New-Object System.Drawing.Size($X, $Y)
    $newGroupbox.Size = New-Object System.Drawing.Size($Width, $Height)
    $newGroupbox.Text = $Title

    $Control.Controls.Add($newGroupbox)

    return $newGroupbox


}