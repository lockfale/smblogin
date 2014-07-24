$computers = Get-Content "hosts.txt"
ForEach ($computer in $computers) {
echo $computer
$client = $computer
if (wmic /user:yourusername /password:yourpassword /node:$computer process call create "") {
Write-Host login to $client is successful
}
}
