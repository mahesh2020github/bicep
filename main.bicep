targetScope = 'resourceGroup'

param location string
param vnetName string
param vnetAddressPrefix string
param workloadSubnetName string
param workloadSubnetPrefix string

module vnet '../modules/network.bicep' = {
  name: 'vnet'
  params: {
    location: location
    vnetName: vnetName
    vnetAddressPrefix: vnetAddressPrefix
    workloadSubnetName: workloadSubnetName
    workloadSubnetPrefix: workloadSubnetPrefix
    nsgname: workloadnsgname
  }
}

module snet  '../modules/nsg.bicep' = {
  name = snet1
  params: {
    location: location
 }
}

module storageacc  '../modules/storage.bicep' = {
  name = stacc
  params: {
    location: location
    allowsubnetId : vnet.properties.subnets[0].id
 }
}



















