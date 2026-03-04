param location string
param staaccname string
param allowedSubnetId string

resource sa 'Microsoft.Storage/storageAccounts@2022-09-01' = {
  name: staaccname
  location: location
  kind: 'StorageV2'

  sku: { 
    name: 'Standard_LRS' 
  }

  properties: {
    supportsHttpsTrafficOnly: true 
    networkAcls:{
      defaultAction: 'Deny'

        virtualNetworkRules: [
        {
          id: allowedSubnetId
          action: 'Allow'
        }
      ]

    }   
  }
}

output storageAccountName string = sa.name
output storageAccountId string = sa.id
