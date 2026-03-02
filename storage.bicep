param location string = 'East-US

@description('Alloowd TLS versuions')
@allowed(['TLS_1', 'TLS_2'])
param minimumTLSVersion string = 'TLS_2'

var accessTier = 'cool'

resource staccount 'Microsoft.Storage/storageAccounts@2025-06-01' = {
  name : 'stdemo3'
  kind : 'BlobStorage'
  location: resourceGroup().location
  sku : {
    name: 'Standard_GRS'
  }
  properties: {
    accessTier: accessTier
    allowBlobPublicAccess: false
    minimumTlsVersion: minimumTLSVersion

    networkAcls:{
      bypass: 'AzureServices'
      
      virtualNetworkRules: [ 
        'subscription/hffhs/resou/subnets/app-subnet'
      ]
      ipRules: [
        '10.0.0.32' ,
        '10.0.0.33'
      ]     
    
    }
  }
}
