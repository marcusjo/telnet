[CmdletBinding()]
Param(
  [Parameter(Mandatory=$True,Position=1)]
   [string]$ip,

   [Parameter(Mandatory=$True,Position=2)]
   [int]$port
)

$connection = New-Object System.Net.Sockets.TcpClient($ip, $port)
if ($connection.Connected) {
    Return "Connection Success"
}
else {
    Return "Connection Failed"
}