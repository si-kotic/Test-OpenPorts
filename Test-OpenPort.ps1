Function Test-OpenPort {
    [CmdletBinding()]
    Param (
        [Parameter(Mandatory=$true,
        ValueFromPipeline=$true)]
        [string]$ComputerName,
        [Parameter(Mandatory=$true,
        ValueFromPipeline=$true)]
        [int32]$Port
    )
    Try {
        $tcpConnection = New-Object System.Net.Sockets.TcpClient
        $tcpConnection.Connect($ComputerName, $Port)
        Write-Host "Successfully connected to $ComputerName on Port $Port" -ForegroundColor Green
        $tcpConnection.Close()
    } Catch {
        Write-Host "Could not connect to $Computer on Port $Port" -ForegroundColor Red
    }
}