$date=read-host "Quelle est l'annee de votre naissance ? "
$result = read-host "Devinette : quelle est votre annee de naissance ?"
$counter=1
do
{
    if ($result -eq $date )
    {
            write-host "C'est bonce !"
            $counter
            break
    }
    if ($result -gt $date )
    {
            write-host "Moinsse !"
    }
    if ($result -lt $date )
    {
            write-host "Pluce !"
    }
    write-host "Game Over, Try Again"
    $result = read-host "Devinette : quelle est votre annee de naissance ?"
    $counter+=1

} while ($true)
