New-SelfSignedCertificate -Subject �all.archer.local� -DnsName �all.archer.local�, �all� -CertStoreLocation �cert:\LocalMachine\My� -KeyExportPolicy Exportable -NotAfter (Get-Date).AddYears(5)