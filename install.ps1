Set-ExecutionPolicy Bypass -Scope Process -Force
[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072 

$CURRENT_DIR=(Get-Location).Path
$SOFTWARE_LIST_PATH="$CURRENT_DIR\windows\packages.lst"

if (Check-Command -cmdname 'choco') {
    Write-Host "Choco is already installed, skip installation."
}
else {
    Write-Host ""
    Write-Host "Installing Chocolate for Windows..." -ForegroundColor Green
    Write-Host "------------------------------------" -ForegroundColor Green
    Set-ExecutionPolicy Bypass -Scope Process -Force; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
}

if( -not (Test-Path -Path "$SOFTWARE_LIST_PATH" -PathType Leaf))
{
    Write-Error "Software list was not found: $SOFTWARE_LIST_PATH"
    exit 1
}

$software_arr=Get-Content -Path $SOFTWARE_LIST_PATH

foreach ($software_pck in $software_arr)
{
    choco install "$software_pck" --yes
}

if (Check-Command -cmdname 'vagrant') {
    vagrant plugin install vagrant-proxyconf
    vagrant plugin install vagrant-vbguest
}
