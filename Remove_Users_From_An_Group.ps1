$group=read-host "What Group Would You Like To Add Them To?"; 
$cred=Get-Credential; 
Import-csv .\Remove_Users.csv | ForEach-Object {$userName=$($_.Users); write-host "Do you want to remove user: " $userName; $(remove-adgroupmember -identity $group -Members $userName -Credential $cred)}