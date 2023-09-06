$firstUser= Read-host "Whose groups would you like to copy? (Username) "
$secondUser = Read-Host "Who would you like to copy the groups to? (Username) "
$creds = Get-Credential
$groups=(Get-ADUser $firstUser -Properties MemberOf).MemberOf)

foreach ($group in $groups) { Add-ADGroupMember -identity $group.name -MemberOf $secondUser -Credential $creds}