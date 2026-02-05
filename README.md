# Automatisation-PowerShell-Bash-
<p align="center">
  <img src="https://img.shields.io/badge/status-active-brightgreen" />
  <img src="https://img.shields.io/badge/version-1.0.0-blueviolet" />
  <img src="https://img.shields.io/badge/Windows-PowerShell-blue" />
  <img src="https://img.shields.io/badge/Linux-Bash-orange" />
  <img src="https://img.shields.io/badge/migration-Windows%20%E2%86%92%20Linux-yellow" />
  <img src="https://img.shields.io/badge/license-MIT-lightgrey" />
</p>

Script d’installation automatisée d’un environnement Windows ou Linux + logs + rollback.

<p align="center">
  <img src="logo1.png" width="200" alt="Automatisation-PowerShell Logo">
</p>


## 🎯 Objectif du projet
Ce projet a pour but de simplifier et fiabiliser le déploiement d’un environnement Windows ou Linux grâce à une automatisation complète.  
Il permet d’éviter les erreurs humaines, d’accélérer les installations et d’assurer une traçabilité totale via un système de logs détaillés.

---

## 🧩 Fonctionnalités principales
- Installation automatisée de composants Windows (services, rôles, logiciels…)
- Vérification préalable de l’environnement (pré-requis, droits, connectivité)
- Génération de logs complets (succès, erreurs, temps d’exécution)
- Mécanisme de **rollback** en cas d’échec
- Messages d’état clairs pour faciliter le support
- Scripts compatibles PowerShell et Bash selon les besoins

## 🏗️ Architecture du projet

Description des dossiers
Windows/

Contient l’ensemble des scripts PowerShell dédiés à l’automatisation sous Windows.

    scripts/ : scripts principaux (installation, désinstallation, utilitaires).

    logs/ : journaux générés automatiquement.

    config/ : fichiers de configuration spécifiques à Windows.

Linux/

Contient les scripts Bash pour les environnements Linux.

    scripts/ : scripts principaux Bash.

    logs/ : journaux générés automatiquement.

    config/ : configurations Linux.

common/

Ressources partagées entre les deux environnements.

    documentation/ : documents techniques, schémas, guides.

    assets/ : images, logos, captures.

    templates/ : modèles réutilisables (logs, messages, configs).


## 🚀 Installation & utilisation

### 1. Cloner le dépôt

English Version — Installation & Usage
1. Clone the repository:
git clone https://github.com/webmasterdu63-creator/Automatisation-PowerShell-Bash.git
cd Automatisation-PowerShell-Bash

Windows (PowerShell)
Run the installer
Set-ExecutionPolicy Bypass -Scope Process -Force
.\src\install.ps1
Set-ExecutionPolicy Bypass -Scope Process -Force
.\src\install.ps1

Linux (Bash)
Make the script executable and run it
chmod +x src/install.sh
bash src/install.sh

 Désinstallation — Windows (PowerShell)
 Set-ExecutionPolicy Bypass -Scope Process -Force
.\src\uninstall.ps1

Ce script :

    supprime les fichiers installés

    nettoie les configurations

    enregistre toutes les actions dans les logs

    déclenche un rollback si une erreur critique survient
Désinstallation — Linux (Bash)
chmod +x src/uninstall.sh
bash src/uninstall.sh

# Automated Setup: Windows & Linux Environment

## 📖 Description
A professional automation suite designed to deploy and configure development environments seamlessly on both Windows and Linux.
This tool focuses on reliability with integrated logging and a safety rollback mechanism.

## ✨ Key Features
* **Multi-Platform**: Native support for PowerShell (Windows) and Bash (Linux).
* **Automated Install**: Silent installation of tools, runtimes, and applications.
* **Advanced Logging**: Every action is tracked in detailed log files for auditing.
* **Rollback System**: Automatically reverts changes if a critical error occurs during setup.

## 🛠️ Installation & Usage

### Windows (PowerShell)
```powershell
git clone [https://github.com/webmasterdu63-creator/Automatisation-PowerShell-Bash-.git](https://github.com/webmasterdu63-creator/Automatisation-PowerShell-Bash-.git)
cd Automatisation-PowerShell-Bash-
.\setup.ps1
