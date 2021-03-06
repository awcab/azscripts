param(  
  [Parameter(Mandatory=$true)] [string]$key,
  [Parameter(Mandatory=$true)] [string]$drive,
  [Parameter(Mandatory=$true)] [string]$origdrive,
  [Parameter(Mandatory=$true)] [string]$root,
  [Parameter(Mandatory=$true)] [string]$origroot,
  [Parameter(Mandatory=$true)] [string]$accountName,
  [Parameter(Mandatory=$true)] [string]$url
)

cmdkey /add:$url /user:AZURE\$accountName /pass:$key
        
net use $drive $root /persistent:yes
net use $origdrive $origroot /persistent:yes

Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
choco install sysinternals -y
