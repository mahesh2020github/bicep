var storate_acccounts = [
  {
    name : 'webstorate'
    kind : 'storagev2'
    location : 'east-us'
  }
  {
    name : 'logstorage'
    kind " 'StorageV2'
    location : 'west us'
  }
]

resource staccount 'Microsoft.Storage/storageAccounts@2025-06-01' = [ for st in list: {
  name : st.name
  kind : st.kind
  location : st.location
}]