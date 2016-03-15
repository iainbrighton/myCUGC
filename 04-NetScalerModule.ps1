## PowerShell module available from Brandon Olin - https://github.com/devblackops/NetScaler
 
## Module is published to the PowerShell Gallery
Find-Module NetScaler -Repository PSGallery;
Import-Module NetScaler;
Connect-NetScaler -Hostname ns1.lab.local -Credential (Get-Credential 'nsroot');

## Retrieve NS features
Get-NSFeature;

## Retrieve all lb monitors
Get-NSLBMonitor;

## Retrieve particular lb monitor
Get-NSLBMonitor -Name 'monitor_storefront.lab.local_st';

## Includes cmdlets to update some NS objects!
Set-NSLBVirtualServer -Name vserver_storefront.lab.local -Comment 'myCUGC.org';
Get-NSLBVirtualServer -Name vserver_storefront.lab.local | Select -Expand Comment;
