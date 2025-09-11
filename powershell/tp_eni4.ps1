$names=get-aduser -filter * -property *
foreach ($content in $names)
{
    set-adaccountpassword  -identity $content.distinguishedname -reset -newpassword (convertto-securestring -asplaintext  "Passw0rd" -force)
    if ((get-aduser $content.distinguishedname).enabled -eq $false)
    {
        enable-adaccount $content.distinguishedname 
    }
}
