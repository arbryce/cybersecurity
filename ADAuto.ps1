# Powershell script to add a new user to AD

Import-Module ActiveDirectory

New-ADUser

$Name = "Franz Ferdinand"
$AccountName = "F.Ferdinand"
$EmailAddress = "ferdi@GlobeXpower.com"
$Department = "TPS Resporting Lead"
$Organization = "GlobeX USA"
$Office = "Springfield, OR"
$Type = "User"