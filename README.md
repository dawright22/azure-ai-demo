<!-- BEGIN_TF_DOCS -->
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
<!-- END_TF_DOCS -->

# AKS Store Demo

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

![Logical Application Architecture Diagram](assets/demo-arch-with-openai.png)

## Run the app on Azure Kubernetes Service (AKS)

To learn how to depoy this app on AKS, see [Quickstart: Deploy an Azure Kubernetes Service (AKS) cluster using Azure CLI](https://learn.microsoft.com/azure/aks/learn/quick-kubernetes-deploy-cli).

> Note: The above article shows a simplified version of the store app with some services removed. For the full application, you can use the `aks-store-all-in-one.yaml` file in this repo.

## Run on any Kubernetes

This application uses public images stored in GitHub Container Registry and Microsoft Container Registry (MCR). Once your Kubernetes cluster of choice is setup, you can deploy the full app with the below commands.

This deployment deploys everything except the `ai-service` that integrates OpenAI. If you want to try integrating the OpenAI component, take a look at this article: [Deploy an application that uses OpenAI on Azure Kubernetes Service (AKS)](https://learn.microsoft.com/azure/aks/open-ai-quickstart?tabs=aoai).

```bash
kubectl create ns pets

kubectl apply -f https://raw.githubusercontent.com/Azure-Samples/aks-store-demo/main/aks-store-all-in-one.yaml -n pets

```

## Run the app locally

The application is designed to be [run in an AKS cluster](#run-the-app-on-aks), but can also be run locally using Docker Compose.

> **IMPORTANT**: You must have [Docker Desktop](https://www.docker.com/products/docker-desktop) installed to run this app locally.

To run this app locally:

Clone the repo to your development computer and navigate to the directory:

```console
git clone https://github.com/Azure-Samples/aks-store-demo.git
cd aks-store-demo
```

Configure your Azure OpenAI or OpenAI API keys in [`docker-compose.yml`](./docker-compose.yml) using the environment variables in the `aiservice` section:

```yaml
  aiservice:
    build: src/ai-service
    container_name: 'aiservice'
    ...
    environment:
      - USE_AZURE_OPENAI=True # set to False if you are not using Azure OpenAI
      - AZURE_OPENAI_DEPLOYMENT_NAME= # required if using Azure OpenAI
      - AZURE_OPENAI_ENDPOINT= # required if using Azure OpenAI
      - OPENAI_API_KEY= # always required
      - OPENAI_ORG_ID= # required if using OpenAI
    ...
```

Alternatively, if you do not have access to Azure OpenAI or OpenAI API keys, you can run the app without the `ai-service` by commenting out the `aiservice` section in [`docker-compose.yml`](./docker-compose.yml). For example:

```yaml
#  aiservice:
#    build: src/ai-service
#    container_name: 'aiservice'
...
#    networks:
#      - backend_services
```

Start the app using `docker compose`. For example:

```bash
docker compose up
```

To stop the app, you can hit the `CTRL+C` key combination in the terminal window where the app is running.

## Run the app with GitHub Codespaces

This repo also includes [DevContainer configuration](./.devcontainer/devcontainer.json), so you can open the repo using [GitHub Codespaces](https://docs.github.com/en/codespaces/overview). This will allow you to run the app in a container in the cloud, without having to install Docker on your local machine. When the Codespace is created, you can run the app using the same instructions as above.

## Run the app with Azure Service Bus and Azure Cosmos DB using Azure Developer CLI

This repo also includes an alternate deployment type that uses Azure Service Bus and Azure Cosmos DB instead of RabbitMQ and MongoDB. To deploy this version of the app, you can use the [Azure Developer CLI](https://learn.microsoft.com/azure/developer/azure-developer-cli/overview) with a GitHub Codespace or DevContainer which has all the tools (e.g., `azure-cli`, `azd`, `terraform`, `kubectl`, and `helm`) pre-installed. This deployment will use Terraform to provision the Azure resources then retrieve output variables and pass them to Helm to deploy the app.

To get started, authenticate to Azure using the Azure Developer CLI and Azure CLI.

```bash
# authenticate to Azure Developer CLI
azd auth login

# authenticate to Azure CLI
az login
```

Deploy the app with a single command.

```bash
azd up
```

> Note: When selecting an Azure region, make sure to choose one that supports all the services used in this app including Azure OpenAI, Azure Kubernetes Service, Azure Service Bus, and Azure Cosmos DB.

Once the deployment is complete, you can verify all the services are running and the app is working by following these steps:

- In the Azure portal, navigate to your Azure Service Bus resource and use Azure Service Bus explorer to check for order messages
- In the Azure portal, navigate to your Azure Cosmos DB resource and use the database explorer to check for order records
- Port-forward the store-admin service (using the command below) then open http://localhost:8081 in your browser and ensure you can add product descriptions using the AI service

  ```bash
  kubectl port-forward svc/store-admin 8081:80
  ```

## Additional Resources

- AKS Documentation. https://learn.microsoft.com/azure/aks
- Kubernetes Learning Path. https://azure.microsoft.com/resources/kubernetes-learning-path 