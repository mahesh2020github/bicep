targetScope = 'subscription'

param rgName string = 'rgMyAssessment'
param location string = 'australiaeast'

resource newRG 'Microsoft.Resources/resourceGroups@2025-04-01' = {
  name: rgName
  location: location
}
