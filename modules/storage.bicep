param location string


resource sa 'Microsoft.Storage/storageAccounts@2022-09-01' = {
  name: 'storageacc
  location: location
  kind: 'StorageV2'

  sku: { 
    name: 'Standard_LRS' 
  }

  properties: {
    supportsHttpsTrafficOnly: true 
    networkAcls:{d
      defaultAction: 'Deny'

        virtualNetworkRules: [
        {
          id: allowedSubnetId
          action: 'Allow'
        }
      ]

    }   
  }
