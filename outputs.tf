output "resource_group_id" {
  value = azurerm_resource_group.rg.id
}

output "app_url" {
  value = "https://${azapi_resource.app.output.properties.configuration.ingress.fqdn}"
}