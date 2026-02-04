Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

$form = New-Object System.Windows.Forms.Form
$form.Text = "Assistant Multi-OS"
$form.Size = New-Object System.Drawing.Size(400,400)
$form.StartPosition = "CenterScreen"

# Bouton Désinstallation
$btnUninstall = New-Object System.Windows.Forms.Button
$btnUninstall.Text = "Désinstaller un logiciel"
$btnUninstall.Size = New-Object System.Drawing.Size(300,40)
$btnUninstall.Location = New-Object System.Drawing.Point(50,40)
$btnUninstall.Add_Click({
    $app = [System.Windows.Forms.MessageBox]::Show("Entrez le nom du logiciel dans la console.")
    $input = Read-Host "Nom du logiciel"
    ./Uninstall-MultiOS.ps1 -AppName $input -Verbose
})
$form.Controls.Add($btnUninstall)

# Bouton Infos système
$btnInfo = New-Object System.Windows.Forms.Button
$btnInfo.Text = "Informations système"
$btnInfo.Size = New-Object System.Drawing.Size(300,40)
$btnInfo.Location = New-Object System.Drawing.Point(50,100)
$btnInfo.Add_Click({
    ./System-Info-MultiOS.ps1 -Verbose
})
$form.Controls.Add($btnInfo)

# Bouton Quitter
$btnQuit = New-Object System.Windows.Forms.Button
$btnQuit.Text = "Quitter"
$btnQuit.Size = New-Object System.Drawing.Size(300,40)
$btnQuit.Location = New-Object System.Drawing.Point(50,160)
$btnQuit.Add_Click({
    $form.Close()
})
$form.Controls.Add($btnQuit)

$form.ShowDialog()
