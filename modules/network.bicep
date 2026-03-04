param location string
param vnetName string
param vnetAddressPrefix string
param subnetAddressPrefix string
param subnetName string
param nsgid string

resource vnet 'Microsoft.Network/virtualNetworks@2023-09-01' = {
  name: vnetName
  location: location

  properties: {
    addressSpace:  { 
      addressPrefixes: [ vnetAddressPrefix ] 
    }

    subnets: [
      {
        name: subnetName
        properties: {
          addressPrefix: subnetAddressPrefix 
          networkSecurityGroup: { id: nsgid}
        }
      }
    ]
  }

}

output subnetId string = resourceId('Microsoft.Network/virtualNetworks/subnets', vnetName, subnetName)
