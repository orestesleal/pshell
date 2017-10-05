# Iterate through all command line arguments (users) and get
# OU information from AD
#
# date: 11:28 AM 10/5/2017
# Author: Orestes Leal Rodriguez
#
# Usage: example: .\adlookupOU.ps1 user1 user2
# user has to be the username on the active doirectory server

foreach ($i in $args) {
 $user = Get-AdUser -Identity $i -Properties Canonicalname
 write-output $user.DistinguishedName
 write-output "================================================================="
}
