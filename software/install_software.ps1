Set-ExecutionPolicy Bypass -Scope Process -Force
[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072 
Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

$CURRENT_DIR=(Get-Location).Path
$SOFTWARE_LIST_PATH="$CURRENT_DIR\packages.lst"

if ((Get-Command "choco" -ErrorAction SilentlyContinue) -eq $null)
{
    Write-Error -Message "Error during chocolatey installation" -Category InvalidResult -RecommendedAction "Check chocolatey installation logs"
    exit 1
}

if( -not (Test-Path -Path "$SOFTWARE_LIST_PATH" -PathType Leaf))
{
    Write-Error "Software list was not found: $SOFTWARE_LIST_PATH"
    exit 1
}

$software_arr=Get-Content -Path $SOFTWARE_LIST_PATH

foreach ($software_pck in $software_arr)
{
    choco install $software_pck --yes
}