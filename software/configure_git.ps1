if ((Get-Command "git" -ErrorAction SilentlyContinue) -ne $null)
{
    $username=Read-Host -Prompt "Please enter user name"
    $email=Read-Host -Prompt "Please enter user email"

    git config --global user.name "$username"
    git config --global user.email "$email"
    
    if ((Get-Command "vim" -ErrorAction SilentlyContinue) -ne $null)
    {
        git config --global core.editor vim
    }
    else
    {
            Write-Warning -Message "vim executable is not found"
    }

    git config --global core.autocrlf true
}
else
{
    Write-Error -Message "git executable is not found"
}