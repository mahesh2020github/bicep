param location string
param vnetAddressPrefix string
param subnetPrefix string

resource vnet 'Microsoft.Network/virtualNetworks@2023-09-01' = {
  name: 'myvent'
  location: location

  properties: {
    addressSpace:  { 
      addressPrefixes: [ vnetAddressPrefix ] 
    }

    subnets: [
      {
        name: 'snet1'
        properties: {
          addressPrefix: subnetPrefixgit 
          //networkSecurityGroup: { id: nsg.id }
        }
      }
    ]
  }

  output subnetid string = vnet.properties.cidrSubnet(0).resourceId()
  output subnetId string = subnet.id
}
