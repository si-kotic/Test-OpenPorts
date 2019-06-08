# Test-OpenPort
Test-OpenPort will test if a device is listening on a particular port.
## Usage
### Parameters
#### Address
Specifies the address to which you want to connect.

Argument | Value
--- | ---
Type | String
Position | Named
Default value | None
Accept pipeline input | True
Accept wildcard characters | False
Mandatory | True
#### Port
Specifies the port to which you want to connect.

Argument | Value
--- | ---
Type | String
Position | Named
Default value | None
Accept pipeline input | True
Accept wildcard characters | False
Mandatory | True
### Syntax
```powershell
Test-OpenPort -Address www.google.co.uk -Port 443
```
### Example
 ```diff
C:\>Test-OpenPort -Address www.google.co.uk -Port 443
+Successfully connected to www.google.co.uk on Port 443
```
```diff
C:\>Test-OpenPort www.google.co.uk -Port 8888
-Could not connect to  on Port 8888
```