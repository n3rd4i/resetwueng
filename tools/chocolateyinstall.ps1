$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/ManuelGil/Reset-Windows-Update-Tool/releases/download/v11.1.0/Portable.zip'
$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = "$(Join-Path $toolsDir ResetWUEng)"
  url           = $url
  checksum      = 'F92B9176127E767D7AF55F96E516C4FC9B20989AF4190B73D2C8F0E32059EE94'
  checksumType  = 'sha256'
}
Install-ChocolateyZipPackage @packageArgs
