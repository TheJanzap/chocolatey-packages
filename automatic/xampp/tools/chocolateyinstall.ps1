﻿$ErrorActionPreference = 'Stop';
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url = 'https://www.apachefriends.org/xampp-files/7.4.6/xampp-windows-x64-7.4.6-0-VC15-installer.exe' # download url, HTTPS preferred

$packageArgs = @{
    packageName    = $env:ChocolateyPackageName
    unzipLocation  = $toolsDir
    fileType       = 'exe'
    url            = $url

    softwareName   = 'xampp*'
    checksum       = '74a2f2386ddc4db33d47ad90823395dbb7b232d0'
    checksumType   = 'sha1'
    checksum64     = '74a2f2386ddc4db33d47ad90823395dbb7b232d0'
    checksumType64 = 'sha1'

    # MSI
    silentArgs     = "--mode unattended"
    validExitCodes = @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs