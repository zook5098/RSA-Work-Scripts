# This script installs IIS and the features required to run RSA Archer.
# Make sure you run this script from a Powershel Admin Prompt!
# Make sure Powershell Execution Policy is bypassed to run these scripts!

# To list all Windows Features: dism /online /Get-Features
# Get-WindowsOptionalFeature -Online 
# LIST All IIS FEATURES: 
# Get-WindowsOptionalFeature -Online | where FeatureName -like 'IIS-*'

Import-Module ServerManager

Get-WindowsFeature | Out-File -FilePath ./PreInstall.txt

Set-ExecutionPolicy Bypass -Scope Proces

Install-WindowsFeature -LogPath ./Log.txt Web-Default-Doc,
Web-Dir-Browsing,
Web-Http-Errors,
Web-Static-Content,
Web-Http-Logging,
Web-Request-Monitor,
Web-Stat-Compression,
Web-Dyn-Compression,
Web-Filtering,
Web-Basic-Auth,
Web-Windows-Auth,
Web-Net-Ext45,
Web-Asp-Net45,
Web-ISAPI-Ext,
Web-ISAPI-Filter,
Web-Mgmt-Console,
Web-Http-Redirect,
Web-Stat-Compression,
Web-Dyn-Compression,
Web-Asp-Net,
NET-Framework-Core,
NET-HTTP-Activation,
NET-Framework-45-Core,
NET-Framework-45-ASPNET,
NET-WCF-HTTP-Activation45,
NET-WCF-TCP-PortSharing45

Get-WindowsFeature | Out-File -FilePath ./PostInstall.txt
