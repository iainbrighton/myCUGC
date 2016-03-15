
## JSON is normally camelCase but depends on the API (PowerShell is typically PascalCase)
$jsonString = @'
    {
        "login":
        {
            "username": "nsroot",
            "password": "nsroot",
            "timeout": 3600
        }
    }
'@

## Convert from JSON to PSCustomObject (Deserialize)
$powerShellObject = ConvertFrom-Json -InputObject $jsonString;
$powerShellObject.Login | Get-Member;
$powerShellObject.Login | Format-List;

## Convert from PSCustomObject to JSON (Serialize)
$json = ConvertTo-Json -InputObject $powerShellObject;
$json;
