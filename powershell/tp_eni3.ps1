write-host "1) Affichage des ordinateurs du domaine."
write-host "2) Affichage des groupes de domaines locaux"
write-host "3) Importation des utilisateurs « AD » à partir d’un fichiers « CSV »"
write-host "4) Vérifier utilisateur existe"
write-host "5) Quitter"
write-host ""
$choisse=read-host "Entrez votre choix"
switch ($choisse) 
{
    '1' { get-adcomputer -filter *}
    '2' { get-adgroup -filter * | where { $PSItem.groupscope -eq 'domainlocal' }}
    '3' {
        $file=read-host "please enter a file to import from"
        $file
    }
    '4' {
        while ($true)
        {
            
            $user=read-host "please enter a user"
            get-aduser $user *> $null
            if ($? -eq $false)
            {
                write-host " cet utilisateur n'existe pas"
                continue
            }
             write-host "cet utilisateur existe"
            break
        }
    }
    '5' { break}
    'default' {break}
    
}
