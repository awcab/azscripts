param(
  [Parameter(Mandatory=$true)] [string]$user,
  [Parameter(Mandatory=$true)] [string]$key,
  [Parameter(Mandatory=$true)] [string]$drive,
  [Parameter(Mandatory=$true)] [string]$origdrive,
  [Parameter(Mandatory=$true)] [string]$root,
  [Parameter(Mandatory=$true)] [string]$origroot,
  [Parameter(Mandatory=$true)] [string]$accountName,
  [Parameter(Mandatory=$true)] [string]$ipaddress
)

cmdkey /add:$ipaddress /user:Azure\$accountName /pass:$key

        
net use $drive $root $user $key /persistent:yes

net use $origdrive $origroot $user $key /persistent:yes


Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

choco install sysinternals -y
