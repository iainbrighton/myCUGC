## Parameters to pass to Invoke-RestMethod
$invokeRestMethodParams = @{
    ## NetScaler appliance login Uri
    Uri = 'http://ns1.lab.local/nitro/v1/config/login';
    
    ## HTTP method
    Method = 'Post';
    
    ## Json request/payload
    Body = '{ "login": { "username": "nsroot", "password": "nsroot", "timeout": 3600 } }';
    
    ## The payload content type
    ContentType = 'application/json';
    
    ## PowerShell variable to store the session
    SessionVariable = 'nsSession';
    
    ## PowerShell ErroAction preference
    ErrorAction = 'Stop';
}
## Call Invoke-RestMethod, splatting the parameters
$response = Invoke-RestMethod @invokeRestMethodParams;

## Examine the stored variable
$nsSession | Get-Member;
$nsSession;
