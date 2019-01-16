param(
  [Parameter(Mandatory=$true)] [string]$key,
  [Parameter(Mandatory=$true)] [string]$mountName,
  [Parameter(Mandatory=$true)] [string]$drive,
  [Parameter(Mandatory=$true)] [string]$root
)

$acctKey = ConvertTo-SecureString -String $key -AsPlainText -Force
$credential = New-Object System.Management.Automation.PSCredential -ArgumentList $mountName, $acctKey
New-PSDrive -Name $drive -PSProvider FileSystem -Root $root -Credential $credential -Persist


