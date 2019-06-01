Function Test-OpenPort {
    [CmdletBinding()]
    Param (
        [Parameter(Mandatory=$true,
        ValueFromPipeline=$true)]
        [string]$Address,
        [Parameter(Mandatory=$true,
        ValueFromPipeline=$true)]
        [int32]$Port
    )
    Try {
        $tcpConnection = New-Object System.Net.Sockets.TcpClient
        $tcpConnection.Connect($Address, $Port)
        Write-Host "Successfully connected to $Address on Port $Port" -ForegroundColor Green
        $tcpConnection.Close()
    } Catch {
        Write-Host "Could not connect to $Address on Port $Port" -ForegroundColor Red
    }
}