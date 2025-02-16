param location string = resourceGroup().location

var uniqueId = uniqueString(resourceGroup().id)

module appService './modules/compute/appservice.bicep' = {
  name: 'apiDeployment'
  params: {
    appName: 'api-${uniqueId}'
    appServicePlanName: 'plan-api-${uniqueString(resourceGroup().id)}'
    location: location
  }
}
