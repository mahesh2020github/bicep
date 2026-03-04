# Azure Bicep Lint - output

PS C:\Lab\biceptest\bicep> az bicep lint --file main.bicep
Bicep CLI is already installed at 'C:\Users\Siva Prasad\.azure\bin\bicep.exe'. Skipping installation as no specific version was requested.

PS C:\Lab\biceptest\bicep> 

# Azure Bicep validate
PS C:\Lab\biceptest\bicep> az deployment group validate --resource-group rgMyAssessment --template-file main.bicep --parameters parameters/dev.bicepparam
Bicep CLI is already installed at 'C:\Users\Siva Prasad\.azure\bin\bicep.exe'. Skipping installation as no specific version was requested.
{
  "error": null,
  "id": "/subscriptions/37e3ffe9-1635-4b58-8be4-13d4bb917fbb/resourceGroups/rgMyAssessment/providers/Microsoft.Resources/deployments/main",
  "name": "main",
  "properties": {
    "correlationId": "e1f273b1-a08c-4fb1-b1be-8319737befa5",
    "debugSetting": null,
    "dependencies": [
      {
        "dependsOn": [
          {
            "id": "/subscriptions/37e3ffe9-1635-4b58-8be4-13d4bb917fbb/resourceGroups/rgMyAssessment/providers/Microsoft.Resources/deployments/deploy-nsg",
            "resourceGroup": "rgMyAssessment",
            "resourceName": "deploy-nsg",
            "resourceType": "Microsoft.Resources/deployments"
          },
          {
            "apiVersion": "2025-04-01",
            "id": "/subscriptions/37e3ffe9-1635-4b58-8be4-13d4bb917fbb/resourceGroups/rgMyAssessment/providers/Microsoft.Resources/deployments/deploy-nsg",
            "resourceGroup": "rgMyAssessment",
            "resourceName": "deploy-nsg",
            "resourceType": "Microsoft.Resources/deployments"
          }
        ],
        "id": "/subscriptions/37e3ffe9-1635-4b58-8be4-13d4bb917fbb/resourceGroups/rgMyAssessment/providers/Microsoft.Resources/deployments/deploy-vnet",
        "resourceGroup": "rgMyAssessment",
        "resourceName": "deploy-vnet",
        "resourceType": "Microsoft.Resources/deployments"
      },
      {
        "dependsOn": [
          {
            "id": "/subscriptions/37e3ffe9-1635-4b58-8be4-13d4bb917fbb/resourceGroups/rgMyAssessment/providers/Microsoft.Resources/deployments/deploy-vnet",
            "resourceGroup": "rgMyAssessment",
            "resourceName": "deploy-vnet",
            "resourceType": "Microsoft.Resources/deployments"
          },
          {
            "apiVersion": "2025-04-01",
            "id": "/subscriptions/37e3ffe9-1635-4b58-8be4-13d4bb917fbb/resourceGroups/rgMyAssessment/providers/Microsoft.Resources/deployments/deploy-vnet",
            "resourceGroup": "rgMyAssessment",
            "resourceName": "deploy-vnet",
            "resourceType": "Microsoft.Resources/deployments"
          }
        ],
        "id": "/subscriptions/37e3ffe9-1635-4b58-8be4-13d4bb917fbb/resourceGroups/rgMyAssessment/providers/Microsoft.Resources/deployments/deploy-storage-account",
        "resourceGroup": "rgMyAssessment",
        "resourceName": "deploy-storage-account",
        "resourceType": "Microsoft.Resources/deployments"
      }
    ],
    "diagnostics": [
      {
        "additionalInfo": null,
        "code": "NestedDeploymentShortCircuited",
        "level": "Warning",
        "message": "A nested deployment got short-circuited and all its resources got skipped from validation. This is due to a nested template having a parameter that was not fully evaluated (e.g. contains a reference() function). Please see https://aka.ms/WhatIfEvalStopped for more guidance.",
        "target": "/subscriptions/37e3ffe9-1635-4b58-8be4-13d4bb917fbb/resourceGroups/rgMyAssessment/providers/Microsoft.Resources/deployments/deploy-vnet"
      },
      {
        "additionalInfo": null,
        "code": "NestedDeploymentShortCircuited",
        "level": "Warning",
        "message": "A nested deployment got short-circuited and all its resources got skipped from validation. This is due to a nested template having a parameter that was not fully evaluated (e.g. contains a reference() function). Please see https://aka.ms/WhatIfEvalStopped for more guidance.",
        "target": "/subscriptions/37e3ffe9-1635-4b58-8be4-13d4bb917fbb/resourceGroups/rgMyAssessment/providers/Microsoft.Resources/deployments/deploy-storage-account"
      }
    ],
    "duration": "PT0S",
    "error": null,
    "extensions": [],
    "mode": "Incremental",
    "onErrorDeployment": null,
    "outputResources": null,
    "outputs": null,
    "parameters": {
      "location": {
        "type": "String",
        "value": "australiaeast"
      },
      "nsgname": {
        "type": "String",
        "value": "nsg1"
      },
      "staaccname": {
        "type": "String",
        "value": "stacc1"
      },
      "subnetAddressPrefix": {
        "type": "String",
        "value": "10.10.1.0/24"
      },
      "subnetName": {
        "type": "String",
        "value": "snet1"
      },
      "vnetAddressPrefix": {
        "type": "String",
        "value": "10.10.0.0/16"
      },
      "vnetName": {
        "type": "String",
        "value": "vnet1"
      }
    },
    "parametersLink": null,
    "providers": [
      {
        "id": null,
        "namespace": "Microsoft.Resources",
        "providerAuthorizationConsentState": null,
        "registrationPolicy": null,
        "registrationState": null,
        "resourceTypes": [
          {
            "aliases": null,
            "apiProfiles": null,
            "apiVersions": null,
            "capabilities": null,
            "defaultApiVersion": null,
            "locationMappings": null,
            "locations": [
              null
            ],
            "properties": null,
            "resourceType": "deployments",
            "zoneMappings": null
          }
        ]
      }
    ],
    "provisioningState": "Succeeded",
    "templateHash": "16696445078399670497",
    "templateLink": null,
    "timestamp": "2026-03-04T10:24:20.426308+00:00",
    "validatedResources": [
      {
        "apiVersion": null,
        "extension": null,
        "id": "/subscriptions/37e3ffe9-1635-4b58-8be4-13d4bb917fbb/resourceGroups/rgMyAssessment/providers/Microsoft.Network/networkSecurityGroups/nsg1",
        "identifiers": null,
        "resourceGroup": "rgMyAssessment",
        "resourceType": null
      },
      {
        "apiVersion": null,
        "extension": null,
        "id": "/subscriptions/37e3ffe9-1635-4b58-8be4-13d4bb917fbb/resourceGroups/rgMyAssessment/providers/Microsoft.Resources/deployments/deploy-nsg",
        "identifiers": null,
        "resourceGroup": "rgMyAssessment",
        "resourceType": null
      },
      {
        "apiVersion": null,
        "extension": null,
        "id": "/subscriptions/37e3ffe9-1635-4b58-8be4-13d4bb917fbb/resourceGroups/rgMyAssessment/providers/Microsoft.Resources/deployments/deploy-storage-account",
        "identifiers": null,
        "resourceGroup": "rgMyAssessment",
        "resourceType": null
      },
      {
        "apiVersion": null,
        "extension": null,
        "id": "/subscriptions/37e3ffe9-1635-4b58-8be4-13d4bb917fbb/resourceGroups/rgMyAssessment/providers/Microsoft.Resources/deployments/deploy-vnet",
        "identifiers": null,
        "resourceGroup": "rgMyAssessment",
        "resourceType": null
      }
    ],
    "validationLevel": null
  },
  "resourceGroup": "rgMyAssessment",
  "type": "Microsoft.Resources/deployments"
}

# Azure Bicep what-if

PS C:\Lab\biceptest\bicep> az deployment group what-if --resource-group rgMyAssessment --template-file main.bicep --parameters parameters/dev.bicepparam
Bicep CLI is already installed at 'C:\Users\Siva Prasad\.azure\bin\bicep.exe'. Skipping installation as no specific version was requested.
Note: The result may contain false positive predictions (noise).
You can help us improve the accuracy of the result by opening an issue here: https://aka.ms/WhatIfIssues

Resource and property changes are indicated with this symbol:
  + Create

The deployment will update the following scope:

Scope: /subscriptions/37e3ffe9-1635-4b58-8be4-13d4bb917fbb/resourceGroups/rgMyAssessment

  + Microsoft.Network/networkSecurityGroups/nsg1 [2023-09-01]

      apiVersion:  "2023-09-01"
      id:          "/subscriptions/37e3ffe9-1635-4b58-8be4-13d4bb917fbb/resourceGroups/rgMyAssessment/providers/Microsoft.Network/networkSecurityGroups/nsg1"
      location:    "australiaeast"
      name:        "nsg1"
      properties.securityRules: [
        0:

          name:                                "Deny-All-Inbound"
          properties.access:                   "Deny"
          properties.destinationAddressPrefix: "*"
          properties.destinationPortRange:     "*"
          properties.direction:                "Inbound"
          properties.priority:                 1000
          properties.protocol:                 "*"
          properties.sourceAddressPrefix:      "*"
          properties.sourcePortRange:          "*"

      ]
      type:        "Microsoft.Network/networkSecurityGroups"

  + Microsoft.Network/virtualNetworks/vnet1 [2023-09-01]

      apiVersion:               "2023-09-01"
      id:                       "/subscriptions/37e3ffe9-1635-4b58-8be4-13d4bb917fbb/resourceGroups/rgMyAssessment/providers/Microsoft.Network/virtualNetworks/vnet1"
      location:                 "australiaeast"
      name:                     "vnet1"
      properties.addressSpace.addressPrefixes: [
        0: "10.10.0.0/16"
      ]
      properties.subnets: [
        0:

          name:                               "snet1"
          properties.addressPrefix:           "10.10.1.0/24"
          properties.networkSecurityGroup.id: "/subscriptions/37e3ffe9-1635-4b58-8be4-13d4bb917fbb/resourceGroups/rgMyAssessment/providers/Microsoft.Network/networkSecurityGroups/nsg1"

      ]
      type:                     "Microsoft.Network/virtualNetworks"

  + Microsoft.Storage/storageAccounts/stacc1 [2022-09-01]

      apiVersion:                           "2022-09-01"
      id:                                   "/subscriptions/37e3ffe9-1635-4b58-8be4-13d4bb917fbb/resourceGroups/rgMyAssessment/providers/Microsoft.Storage/storageAccounts/stacc1"
      kind:                                 "StorageV2"
      location:                             "australiaeast"
      name:                                 "stacc1"
      properties.networkAcls.defaultAction: "Deny"
      properties.networkAcls.virtualNetworkRules: [
        0:

          action: "Allow"
          id:     "/subscriptions/37e3ffe9-1635-4b58-8be4-13d4bb917fbb/resourceGroups/rgMyAssessment/providers/Microsoft.Network/virtualNetworks/vnet1/subnets/snet1"

      ]
      properties.supportsHttpsTrafficOnly:  true
      sku.name:                             "Standard_LRS"
      type:                                 "Microsoft.Storage/storageAccounts"

Resource changes: 3 to create.
PS C:\Lab\biceptest\bicep>

# azure CLI commands for group deployments
Lint:
PS C:\Lab\biceptest\bicep> az bicep lint --file main.bicep

Validate:
PS C:\Lab\biceptest\bicep> az deployment group validate --resource-group rgMyAssessment --template-file main.bicep --parameters parameters/dev.bicepparam

what-if:
PS C:\Lab\biceptest\bicep> az deployment group what-if --resource-group rgMyAssessment --template-file main.bicep --parameters parameters/dev.bicepparam