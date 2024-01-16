# AKS Store Demo Using Terrafrom


This sample demo app consists of a group of containerized microservices that can be easily deployed into an Azure Kubernetes Service (AKS) cluster. This is meant to show a realistic scenario using a polyglot architecture, event-driven design, and common open source back-end services (eg - RabbitMQ, MongoDB). The application also leverages OpenAI's GPT-3 models to generate product descriptions. This can be done using either [Azure OpenAI](https://learn.microsoft.com/azure/ai-services/openai/overview) or [OpenAI](https://openai.com/).

This application is inspired by another demo app called [Red Dog](https://github.com/Azure/reddog-code).

> Note: This is not meant to be an example of perfect code to be used in production, but more about showing a realistic application running in AKS. 

<!-- 
To walk through a quick deployment of this application, see the [AKS Quickstart](https://learn.microsoft.com/azure/aks/learn/quick-kubernetes-deploy-cli).

To walk through a complete experience where this code is packaged into container images, uploaded to Azure Container Registry, and then run in and AKS cluster, see the [AKS Tutorials](https://learn.microsoft.com/azure/aks/tutorial-kubernetes-prepare-app).

 -->

## Architecture

The application has the following services: 

| Service | Description |
| --- | --- |
| `makeline-service` | This service handles processing orders from the queue and completing them (Golang) |
| `order-service` | This service is used for placing orders (Javascript) |
| `product-service` | This service is used to perform CRUD operations on products (Rust) |
| `store-front` | Web app for customers to place orders (Vue.js) |
| `store-admin` | Web app used by store employees to view orders in queue and manage products (Vue.js) | 
| `virtual-customer` | Simulates order creation on a scheduled basis (Rust) |
| `virtual-worker` | Simulates order completion on a scheduled basis (Rust) |
| `ai-service` | Optional service for adding generative text and graphics creation (Python) |
| `mongodb` | MongoDB instance for persisted data |
| `rabbitmq` | RabbitMQ for an order queue |

## Prerequisites

For this demo, you can either use Azure OpenAI service or OpenAI service.
If you plan on using Azure OpenAI service, you need to request access to enable it on your Azure subscription using the Request Access to Azure OpenAI Service form.

If you plan on using OpenAI, sign up on the OpenAI website.



## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_helm"></a> [helm](#requirement\_helm) | ~> 2.0.2 |
| <a name="requirement_local"></a> [local](#requirement\_local) | ~>2.4.0 |
| <a name="requirement_random"></a> [random](#requirement\_random) | =3.5.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |
| <a name="provider_helm"></a> [helm](#provider\_helm) | ~> 2.0.2 |
| <a name="provider_kubernetes"></a> [kubernetes](#provider\_kubernetes) | n/a |
| <a name="provider_random"></a> [random](#provider\_random) | =3.5.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_cognitive_account.tf-ai-demo](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/cognitive_account) | resource |
| [azurerm_cognitive_deployment.tf-ai-demo](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/cognitive_deployment) | resource |
| [azurerm_cosmosdb_account.tf-ai-demo](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/cosmosdb_account) | resource |
| [azurerm_cosmosdb_mongo_collection.tf-ai-demo](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/cosmosdb_mongo_collection) | resource |
| [azurerm_cosmosdb_mongo_database.tf-ai-demo](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/cosmosdb_mongo_database) | resource |
| [azurerm_federated_identity_credential.tf-ai-demo](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/federated_identity_credential) | resource |
| [azurerm_kubernetes_cluster.tf-ai-demo](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/kubernetes_cluster) | resource |
| [azurerm_resource_group.tf-ai-demo](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group) | resource |
| [azurerm_role_assignment.tf-ai-demo_aoai_me](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) | resource |
| [azurerm_role_assignment.tf-ai-demo_aoai_mi](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) | resource |
| [azurerm_servicebus_namespace.tf-ai-demo](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/servicebus_namespace) | resource |
| [azurerm_servicebus_namespace_authorization_rule.tf-ai-demo](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/servicebus_namespace_authorization_rule) | resource |
| [azurerm_servicebus_queue.tf-ai-demo](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/servicebus_queue) | resource |
| [azurerm_servicebus_queue_authorization_rule.tf-ai-demo](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/servicebus_queue_authorization_rule) | resource |
| [azurerm_user_assigned_identity.tf-ai-demo](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/user_assigned_identity) | resource |
| [helm_release.CertManger](https://registry.terraform.io/providers/hashicorp/helm/latest/docs/resources/release) | resource |
| [helm_release.traefik](https://registry.terraform.io/providers/hashicorp/helm/latest/docs/resources/release) | resource |
| [helm_release.vault](https://registry.terraform.io/providers/hashicorp/helm/latest/docs/resources/release) | resource |
| [kubernetes_namespace.CertManager](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/namespace) | resource |
| [random_integer.tf-ai-demo](https://registry.terraform.io/providers/hashicorp/random/3.5.1/docs/resources/integer) | resource |
| [random_pet.tf-ai-demo](https://registry.terraform.io/providers/hashicorp/random/3.5.1/docs/resources/pet) | resource |
| [azurerm_client_config.current](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/client_config) | data source |
| [azurerm_subscription.current](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/subscription) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ai_location"></a> [ai\_location](#input\_ai\_location) | value of azure region for deploying azure ai service | `string` | `"Australia East"` | no |
| <a name="input_k8s_namespace"></a> [k8s\_namespace](#input\_k8s\_namespace) | value of kubernetes namespace | `string` | `"default"` | no |
| <a name="input_location"></a> [location](#input\_location) | n/a | `string` | `"Australia East"` | no |
| <a name="input_openai_model_capacity"></a> [openai\_model\_capacity](#input\_openai\_model\_capacity) | value of azure openai model capacity | `number` | `120` | no |
| <a name="input_openai_model_name"></a> [openai\_model\_name](#input\_openai\_model\_name) | value of azure openai model name | `string` | `"gpt-35-turbo"` | no |
| <a name="input_openai_model_version"></a> [openai\_model\_version](#input\_openai\_model\_version) | value of azure openai model version | `string` | `"0613"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_ai_endpoint"></a> [ai\_endpoint](#output\_ai\_endpoint) | n/a |
| <a name="output_ai_key"></a> [ai\_key](#output\_ai\_key) | n/a |
| <a name="output_ai_managed_identity_client_id"></a> [ai\_managed\_identity\_client\_id](#output\_ai\_managed\_identity\_client\_id) | n/a |
| <a name="output_ai_model_name"></a> [ai\_model\_name](#output\_ai\_model\_name) | n/a |
| <a name="output_ai_openai_deployment_name"></a> [ai\_openai\_deployment\_name](#output\_ai\_openai\_deployment\_name) | n/a |
| <a name="output_aks_name"></a> [aks\_name](#output\_aks\_name) | n/a |
| <a name="output_db_account_name"></a> [db\_account\_name](#output\_db\_account\_name) | n/a |
| <a name="output_db_key"></a> [db\_key](#output\_db\_key) | n/a |
| <a name="output_db_uri"></a> [db\_uri](#output\_db\_uri) | n/a |
| <a name="output_k8s_namespace"></a> [k8s\_namespace](#output\_k8s\_namespace) | n/a |
| <a name="output_rg_name"></a> [rg\_name](#output\_rg\_name) | n/a |
| <a name="output_sb_listener_key"></a> [sb\_listener\_key](#output\_sb\_listener\_key) | n/a |
| <a name="output_sb_listener_username"></a> [sb\_listener\_username](#output\_sb\_listener\_username) | n/a |
| <a name="output_sb_namespace_host"></a> [sb\_namespace\_host](#output\_sb\_namespace\_host) | n/a |
| <a name="output_sb_namespace_uri"></a> [sb\_namespace\_uri](#output\_sb\_namespace\_uri) | n/a |
| <a name="output_sb_sender_key"></a> [sb\_sender\_key](#output\_sb\_sender\_key) | n/a |
| <a name="output_sb_sender_username"></a> [sb\_sender\_username](#output\_sb\_sender\_username) | n/a |

## To Deploy




## Additional Resources

- AKS Documentation. https://learn.microsoft.com/azure/aks
- Kubernetes Learning Path. https://azure.microsoft.com/resources/kubernetes-learning-path 