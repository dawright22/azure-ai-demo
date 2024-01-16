resource "azurerm_servicebus_namespace" "tf-ai-demo" {
  name                = "sb-${local.name}"
  location            = azurerm_resource_group.tf-ai-demo.location
  resource_group_name = azurerm_resource_group.tf-ai-demo.name
  sku                 = "Standard"
}

resource "azurerm_servicebus_namespace_authorization_rule" "tf-ai-demo" {
  name         = "listener"
  namespace_id = azurerm_servicebus_namespace.tf-ai-demo.id

  listen = true
  send   = false
  manage = false
}

resource "azurerm_servicebus_queue" "tf-ai-demo" {
  name         = "orders"
  namespace_id = azurerm_servicebus_namespace.tf-ai-demo.id
}

resource "azurerm_servicebus_queue_authorization_rule" "tf-ai-demo" {
  name     = "sender"
  queue_id = azurerm_servicebus_queue.tf-ai-demo.id

  listen = false
  send   = true
  manage = false
}

