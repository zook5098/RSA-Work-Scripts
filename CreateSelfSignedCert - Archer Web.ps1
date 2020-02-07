$cert = New-SelfSignedCertificate -Subject “all.archer.local” -DnsName “all.archer.local”, “all” -CertStoreLocation “cert:\LocalMachine\My” -FriendlyName "Archer Web" -KeyExportPolicy Exportable -NotAfter (Get-Date).AddYears(5)

#If you want to export the cert with a password, uncomment and run the following
#
#$pwd = ConvertTo-SecureString -String "MyPassword" -Force -AsPlainText
#
#Export-PfxCertificate -Cert $cert -FilePath C:\temp\cert.pfx -Password $pwd