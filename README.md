# Automatisation-PowerShell-Bash-
Script d’installation automatisée d’un environnement Windows ou Linux + logs + rollback.

<p align="center">
  <img src="logo1.png" width="400" alt="Automatisation-PowerShell Logo">
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

---

## 🏗️ Architecture du projet

---

## 🚀 Installation & utilisation

### 1. Cloner le dépôt
Set-ExecutionPolicy Bypass -Scope Process -Force
.\src\install.ps1
bash src/install.sh

```bash
git clone https://github.com/webmasterdu63-creator/Automatisation-PowerShell-Bash.git

# Automated Setup: Windows & Linux Environment

<p align="center">
  <img src="logo1.png" width="400" alt="Automation Logo">
</p>

<p align="center">
  <img src="https://img.shields.io/badge/status-active-brightgreen" alt="Status">
  <img src="https://img.shields.io/badge/platform-Windows%20%7C%20Linux-lightgrey" alt="Platform">
  <img src="https://img.shields.io/badge/PowerShell-5.1%2B%20%2F%207%2B-blue" alt="PowerShell">
  <img src="https://img.shields.io/badge/Bash-4.0%2B-orange" alt="Bash">
  <img src="https://img.shields.io/badge/Safety-Rollback%20Enabled-red" alt="Safety">
  <img src="https://img.shields.io/badge/license-MIT-blueviolet" alt="License">
</p>

---

## 📖 Description
A professional automation suite designed to deploy and configure development environments seamlessly on both Windows and Linux. This tool focuses on reliability with integrated logging and a safety rollback mechanism.

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
