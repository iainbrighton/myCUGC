## Call Nitro API via standard web request (same as a browser)
Invoke-WebRequest -Uri 'http://ns1.lab.local/nitro/v1/config' -WebSession $nsSession -OutVariable iwrResponse;
$iwrResponse.Content;

## Convert JSON string to a PSCustomObject
$iwrObject = ConvertFrom-Json -InputObject $iwrResponse.Content;
$iwrObject | Get-Member;

## Call Nitro API via Invoke-RestMethod
Invoke-RestMethod -Uri 'http://ns1.lab.local/nitro/v1/config' -WebSession $nsSession -OutVariable irmResponse;
## Response is automatically deserialized
$irmResponse | Get-Member;

## Retrieve NS features
Invoke-RestMethod -Uri 'http://ns1.lab.local/nitro/v1/config/nsfeature' -WebSession $nsSession -OutVariable irmResponse;
$irmResponse.nsfeature;

## Retrieve all lb monitors
Invoke-RestMethod -Uri 'http://ns1.lab.local/nitro/v1/config/lbmonitor' -WebSession $nsSession -OutVariable irmResponse;
$irmResponse.lbmonitor | Format-Table;
$irmResponse.lbmonitor.Count;

## Retrieve particular lb monitor
Invoke-RestMethod -Uri 'http://ns1.lab.local/nitro/v1/config/lbmonitor/monitor_storefront.lab.local_st' -WebSession $nsSession -OutVariable irmResponse;
$irmResponse.lbmonitor;

## Query lb statistics
Invoke-RestMethod -Uri 'http://ns1.lab.local/nitro/v1/stat/lbvserver' -WebSession $nsSession -OutVariable irmResponse;
$irmResponse.lbvserver;

## Query access gateway statistics
Invoke-RestMethod -Uri 'http://ns1.lab.local/nitro/v1/stat/vpnvserver' -WebSession $nsSession -OutVariable irmResponse;
$irmResponse.vpnvserver;
