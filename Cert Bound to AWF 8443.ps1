$certHash = netsh http show sslcert 0.0.0.0:8443 | Select-String "Certificate Hash"

$thumbprint = $certHash -replace ".*: "

Get-ChildItem -Path Cert:\LocalMachine\* -Recurse -Force | where {$_.Thumbprint -eq "$thumbprint"} | FORMAT-LIST –PROPERTY FriendlyName, DnsNameList, Subject, Thumbprint,SerialNumber, PSParentPath, EnhancedKeyUsageList, NotAfter

pause