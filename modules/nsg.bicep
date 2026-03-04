param location string
param nsgname string

resource nsg 'Microsoft.Network/networkSecurityGroups@2023-09-01' = {
  name: nsgname
  location: location
  properties: {
    securityRules: [
      {
        name: 'Deny-All-Inbound'
        properties: {
          protocol: '*'
          sourcePortRange: '*'
          destinationPortRange: '*'
          sourceAddressPrefix: '*'
          destinationAddressPrefix: '*'
          access: 'Deny'
          priority: 1000
          direction: 'Inbound'
        }
      }
    ]
  }
}

output nsgid string = nsg.id
