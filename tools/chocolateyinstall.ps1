$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://gallery.technet.microsoft.com/scriptcenter/Reset-Windows-Update-Agent-d824badc/file/224689/1/ResetWUEng.zip'
$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = "$(Join-Path $toolsDir ResetWUEng)"
  url           = $url
  checksum      = '4899B5EDE5434005BF692F3729B57A6E1524BC46629A7263FF6EABBD5F741198'
  checksumType  = 'sha256'
}
Install-ChocolateyZipPackage @packageArgs
