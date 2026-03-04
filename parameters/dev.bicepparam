using '../main.bicep'

param location = 'australiaeast'
param vnetName = 'vnet1'
param vnetAddressPrefix = '10.10.0.0/16'
param subnetAddressPrefix = '10.10.1.0/24'
param subnetName = 'snet1'
param nsgname = 'nsg1'
param staaccname = 'stacc1'