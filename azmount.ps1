param(
  [Parameter(Mandatory=$true)] [string]$user,
  [Parameter(Mandatory=$true)] [string]$key,
  [Parameter(Mandatory=$true)] [string]$drive,
  [Parameter(Mandatory=$true)] [string]$origdrive,
  [Parameter(Mandatory=$true)] [string]$root,
  [Parameter(Mandatory=$true)] [string]$origroot
)

net use $drive $root $user $key /persistent:yes

net use $origdrive $origroot $user $key /persistent:yes


