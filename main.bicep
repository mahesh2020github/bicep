targetScope = 'resourceGroup'

param location string
param vnetName string
param vnetAddressPrefix string
param subnetAddressPrefix string
param subnetName string
param nsgname string
param staaccname string


module nsg './modules/nsg.bicep' = {
  name: 'deploy-nsg'
  params: {    
    location: location
    nsgname: nsgname
  }
}

module vnet './modules/network.bicep' = {
  name: 'deploy-vnet'
  params: {
    location: location
    vnetName: vnetName
    vnetAddressPrefix: vnetAddressPrefix
    subnetName: subnetName
    subnetAddressPrefix: subnetAddressPrefix
    nsgid: nsg.outputs.nsgid
  }
}

module storageacc  './modules/storage.bicep' = {
  name: 'deploy-storage-account'
  params: {
    location: location
    staaccname : staaccname
    allowedSubnetId : vnet.outputs.subnetId
 }
}

output storageAccountName string = storageacc.outputs.storageAccountName

output storageAccountId string = storageacc.outputs.storageAccountId

output subnetResourceId string = vnet.outputs.subnetId

output nsgResourceId string = nsg.outputs.nsgid


















