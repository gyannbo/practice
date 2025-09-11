$useractif= New-Object System.Collections.ArrayList
$userinactif= New-Object System.Collections.ArrayList
$biglist=Get-ADuser -filter * | select enabled,name

$actif=0
$inactif=0
foreach ( $content in $biglist )
{
    if ($content.enabled -eq 'True')
	{
	$actif += 1
	$useractif += $content.name
	}
	else
	{
	$inactif += 1
	$userinactif += $content.name
	}
}
write-host " les utilisateur inactifs : $useractif"
write-host " les utilisateurs actifs : $userinactif"
write-host "Il y a $actif utilisateurs actif et $inactif utilisateurs inactifs"
