New-SelfSignedCertificate -Subject �all.archer.local� -DnsName �all.archer.local�, �all� -CertStoreLocation �cert:\LocalMachine\My� -FriendlyName "Archer AWF" -KeyExportPolicy Exportable -NotAfter (Get-Date).AddYears(5)