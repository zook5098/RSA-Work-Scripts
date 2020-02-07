# Make sure you run this script from a Powershel Admin Prompt!
# Make sure Powershell Execution Policy is bypassed to run these scripts!
#Set-ExecutionPolicy Bypass -Scope Proces

$cert = New-SelfSignedCertificate -FriendlyName "Archer Web" -Subject “all.archer.local” -DnsName “all.archer.local”, “all” -CertStoreLocation “cert:\LocalMachine\My” -HashAlgorithm sha512 -KeyAlgorithm RSA -KeyLength 4096 -KeyExportPolicy Exportable -TextExtension @("2.5.29.37={text}1.3.6.1.5.5.7.3.1") -NotAfter (Get-Date).AddYears(5)

$pwd = ConvertTo-SecureString -String "Password123$" -Force -AsPlainText

$DesktopPath = [Environment]::GetFolderPath("Desktop")

Export-PfxCertificate -Cert $cert -FilePath $DesktopPath\cert.pfx -Password $pwd

Import-PfxCertificate -FilePath $DesktopPath\cert.pfx -CertStoreLocation Cert:\LocalMachine\Root -Password $pwd