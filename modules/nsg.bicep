param location string

resource nsg 'Microsoft.Network/networkSecurityGroups@2023-09-01' = {
  name: 'nsgWorkload'
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
  output nsgid string = nsg.resourceId()
}
