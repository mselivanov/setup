Set-ExecutionPolicy Bypass -Scope Process -Force
[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072 
Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

if (Get-Command "choco" -ErrorAction SilentlyContinue)
{
    choco install git --yes
    choco install vim --yes
    choco install cmder --yes
    choco install pycharm-community --yes
    choco install firefox --yes
    choco install googlechrome --yes
    choco install hourglass.install --yes
    choco install launchy --yes
    choco install obsidian --yes
    choco install spotify --yes
    choco install citrix-workspace --yes
    choco install keepass --yes
    choco install adobereader --yes
    choco install dbeaver --yes
    choco install freeplane --yes
    choco install calibre --yes
    choco install screenpresso --yes
} 
else 
{
    Write-Error -Message "Error during chocolatey installation" -Category InvalidResult -RecommendedAction "Check chocolatey installation logs"
}
