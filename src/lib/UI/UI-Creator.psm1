function Enable-AutoScroll {
    param (
        [System.Windows.Forms.Form]$Form
    )

    $Form.AutoScroll = $true
    $Form.AutoScrollMargin = New-Object System.Drawing.Size(0, 20)  # Ajusta el margen según sea necesario
    $Form.AutoScrollMinSize = New-Object System.Drawing.Size($Form.Width, $Form.Height)
}


function Add-TabControl {
    param (
        [System.Windows.Forms.Form]$Form
    )

    $tabControl = New-Object System.Windows.Forms.TabControl
    $tabControl.Location = New-Object System.Drawing.Point(0, 0)
    $tabControl.Size = $Form.ClientSize  #ClientSize obtiene las dimensiones del formulario
    $tabControl.BackColor = [System.Drawing.ColorTranslator]::FromHtml("#252525")
    $tabControl.ForeColor = [System.Drawing.ColorTranslator]::FromHtml("#252525")

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
    $tabpage.BackColor = [System.Drawing.ColorTranslator]::FromHtml("#252525")


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
        [int]$Height,
        [string]$ForeColor
    )

    $newControl = New-Object System.Windows.Forms.Button
    $newControl.Location = New-Object System.Drawing.Point($X, $Y)
    $newControl.Size = New-Object System.Drawing.Size($Width, $Height)
    $newControl.Text = $Text
    $newControl.FlatStyle = 'Flat'
    $newControl.Font = New-Object System.Drawing.Font('Consolas',9)
    $newControl.ForeColor = [System.Drawing.ColorTranslator]::FromHtml("$ForeColor")


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

    $newGroupBox = New-Object System.Windows.Forms.GroupBox
    $newGroupBox.Location = New-Object System.Drawing.Size($X, $Y)
    $newGroupBox.Size = New-Object System.Drawing.Size($Width, $Height)
    $newGroupBox.ForeColor = [System.Drawing.ColorTranslator]::FromHtml("#eeeeee")


    $Control.Controls.Add($newGroupBox)

    return $newGroupBox


}

function Add-Label {
    param (
        [System.Windows.Forms.Control]$Control,
        [string]$Text,
        [int]$X,
        [int]$Y,
        [int]$Width,
        [int]$Height,
        [string]$ForeColor
        
    )

    $newLabel = New-Object System.Windows.Forms.Label  # Cambiado de Panel a Label
    $newLabel.Location = New-Object System.Drawing.Size($X, $Y)
    $newLabel.Size = New-Object System.Drawing.Size($Width, $Height)
    $newLabel.Text = $Text
    $newLabel.Font = New-Object System.Drawing.Font('Consolas', 18, [System.Drawing.FontStyle]::Bold)
    $newLabel.ForeColor = [System.Drawing.ColorTranslator]::FromHtml("$ForeColor")
    $newLabel.TextAlign = 'MiddleCenter'

    $Control.Controls.Add($newLabel)

    return $newLabel
}


function Add-Panel {
    param (
        [System.Windows.Forms.Control]$Control,
        [int]$X,
        [int]$Y,
        [int]$Width,
        [int]$Height
    )

    $newPanel = New-Object System.Windows.Forms.Panel
    $newPanel.Location = New-Object System.Drawing.Size($X, $Y)
    $newPanel.Size = New-Object System.Drawing.Size($Width, $Height)
    $newPanel.BackColor = [System.Drawing.ColorTranslator]::FromHtml("#2c2c2c")
    $Control.Controls.Add($newPanel)

    return $newPanel
}


function Add-CheckBox {
    param (
        [System.Windows.Forms.Control]$Control,
        [string]$Text,
        [int]$X,
        [int]$Y,
        [string]$ForeColor
    )

    $checkBox = New-Object System.Windows.Forms.CheckBox
    $checkBox.Text = $Text
    $checkBox.Location = New-Object System.Drawing.Point($X, $Y)
    $checkBox.Font = New-Object System.Drawing.Font('Consolas', 15, [System.Drawing.FontStyle]::Italic)
    $checkBox.ForeColor = [System.Drawing.ColorTranslator]::FromHtml("$ForeColor")
    #$checkBox.Appearance = 'Button'

    $Control.Controls.Add($checkBox)

    return $checkBox
}