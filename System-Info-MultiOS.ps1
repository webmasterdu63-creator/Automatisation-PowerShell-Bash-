<#
.SYNOPSIS
    Script d'informations système multi-OS (Windows + Linux)

.DESCRIPTION
    Détecte automatiquement l'OS et affiche les informations système essentielles :
    - Windows : version, CPU, RAM, disque, IP
    - Linux (Ubuntu/Debian) : distribution, kernel, CPU, RAM, disque, IP
    Inclut : Verbose, DryRun, logs.

.PARAMETER DryRun
    Simule l'exécution.

.EXAMPLE
    ./System-Info-MultiOS.ps1 -Verbose
#>

param(
    [switch]$DryRun
)

# --- LOGGING ---
$LogFile = "$PSScriptRoot/system-info.log"

function Write-Log {
    param([string]$Message)
    $ts = (Get-Date).ToString("yyyy-MM-dd HH:mm:ss")
    "$ts - $Message" | Out-File -FilePath $LogFile -Append
    Write-Verbose $Message
}

Write-Log "=== Début du script d'informations système ==="

if ($DryRun) {
    Write-Log "[DryRun] Mode simulation activé."
}

# --- DÉTECTION OS ---
$Platform = if ($IsWindows) { "Windows" } elseif ($IsLinux) { "Linux" } else { "Unknown" }
Write-Log "Plateforme détectée : $Platform"

if ($Platform -eq "Unknown") {
    Write-Log "OS non supporté."
    exit 1
}

# ============================
#   WINDOWS
# ============================
if ($Platform -eq "Windows") {

    Write-Log "Récupération des informations Windows..."

    $info = [PSCustomObject]@{
        OS              = (Get-CimInstance Win32_OperatingSystem).Caption
        Version         = (Get-CimInstance Win32_OperatingSystem).Version
        Build           = (Get-CimInstance Win32_OperatingSystem).BuildNumber
        CPU             = (Get-CimInstance Win32_Processor).Name
        RAM_GB          = [math]::Round((Get-CimInstance Win32_ComputerSystem).TotalPhysicalMemory / 1GB, 2)
        Disk_Free_GB    = [math]::Round((Get-PSDrive C).Free / 1GB, 2)
        Disk_Total_GB   = [math]::Round((Get-PSDrive C).Used / 1GB + (Get-PSDrive C).Free / 1GB, 2)
        IP              = (Get-NetIPAddress -AddressFamily IPv4 | Where-Object {$_.IPAddress -notlike "169.*"}).IPAddress
    }

    if (-not $DryRun) {
        $info | Format-List
    }

    Write-Log "Informations Windows récupérées."
}

# ============================
#   LINUX (Ubuntu/Debian)
# ============================
if ($Platform -eq "Linux") {

    Write-Log "Récupération des informations Linux..."

    $distro = (lsb_release -ds) 2>$null
    $kernel = (uname -r)
    $cpu = (lscpu | Select-String "Model name").ToString().Split(":")[1].Trim()
    $ram = (free -m | Select-String "Mem").ToString().Split(" ",[System.StringSplitOptions]::RemoveEmptyEntries)[1]
    $disk = (df -h / | Select-String "/").ToString().Split(" ",[System.StringSplitOptions]::RemoveEmptyEntries)

    $info = [PSCustomObject]@{
        Distribution    = $distro
        Kernel          = $kernel
        CPU             = $cpu
        RAM_MB          = $ram
        Disk_Total      = $disk[1]
        Disk_Used       = $disk[2]
        Disk_Free       = $disk[3]
        IP              = (hostname -I).Trim()
    }

    if (-not $DryRun) {
        $info | Format-List
    }

    Write-Log "Informations Linux récupérées."
}

Write-Log "=== Fin du script ==="
