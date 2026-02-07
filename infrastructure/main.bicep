targetScope = 'subscription'

@description('environment')
param environment string = 'dev'

@description('Name of the Project')
param projectName string = 'theCloudNativeBakery'

@description('Location of the Resource Group')
param location string = 'westeurope'

var resourceGroupName = '${projectName}-${environment}'

resource rg 'Microsoft.Resources/resourceGroups@2021-04-01' = {
  name: resourceGroupName
  location: location
}
