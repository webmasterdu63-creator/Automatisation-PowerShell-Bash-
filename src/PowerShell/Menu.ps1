Clear-Host
Write-Host "==============================================="
Write-Host "     Assistant d'Automatisation Multi-OS"
Write-Host "==============================================="
Write-Host ""
Write-Host "1. Désinstaller un logiciel (Multi-OS)"
Write-Host "2. Afficher les informations système (Multi-OS)"
Write-Host "3. Optimiser Windows"
Write-Host "4. Nettoyer Linux"
Write-Host "5. Ouvrir les logs"
Write-Host "6. À propos"
Write-Host "7. Quitter"
Write-Host ""
$choice = Read-Host "Votre choix"

switch ($choice) {

    "1" {
        $app = Read-Host "Nom du logiciel à désinstaller"
        ./Uninstall-MultiOS.ps1 -AppName $app -Verbose
        Pause
    }

    "2" {
        ./System-Info-MultiOS.ps1 -Verbose
        Pause
    }

    "3" {
        Write-Host "Optimisation Windows..."
        # Exemple : nettoyage du cache
        if ($IsWindows) {
            Write-Host "Nettoyage du cache Windows..."
            Start-Process cleanmgr -ArgumentList "/sagerun:1"
        } else {
            Write-Host "Option Windows uniquement."
        }
        Pause
    }

    "4" {
        if ($IsLinux) {
            Write-Host "Nettoyage Linux..."
            sudo apt autoremove -y
            sudo apt clean
        } else {
            Write-Host "Option Linux uniquement."
        }
        Pause
    }

    "5" {
        Write-Host "Ouverture du dossier logs..."
        if ($IsWindows) { Start-Process "$PSScriptRoot" }
        if ($IsLinux) { xdg-open "$PSScriptRoot" }
        Pause
    }

    "6" {
        Write-Host "Projet Automatisation PowerShell-Bash"
        Write-Host "Créé par Jean — Admin Systèmes & Réseaux"
        Write-Host "Version 1.0"
        Pause
    }

    "7" {
        Write-Host "Au revoir !"
        exit
    }

    default {
        Write-Host "Choix invalide."
        Pause
    }
}
