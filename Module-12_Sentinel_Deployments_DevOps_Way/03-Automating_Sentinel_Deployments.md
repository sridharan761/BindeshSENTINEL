# Automating Sentinel based solutions deployments using Terraform and Azure DevOps

- In this task, we're going to use Terraform as a IaC tool to automate the process of setting up Microsoft Sentinel - a scalable, cloud-native, security information event management (SIEM) and security orchestration automated response (SOAR) solution.

- We'll create an below resources as a part of the deployment:

  - **Azure Log Analytics workspace**
  - Enable **Microsoft Sentinel** on the workspace.

- **INFO**: The Log Analytics workspace provides the data store for Azure Sentinel and must be set up before we enable Azure Sentinel.

- Also ensure you have the necessary permissions to create resources in your Azure subscription.

## Step-01: Plan and Design your Security solution based on Microsoft Sentinel

## Step-02: Develop Terraform scripts for provisioning required resources

## Step-03: Create Azure DevOps Organization and Project

## Step-04: Create a new Azure repository for hosting the TF manifests

## Step-05: Push the Terraform scripts to Version Control System (Azure Repos)

## Step-06: Create an Azure Pipeline (build) and configure it

## Step-07: Create a Service Principal for terraform authentication

```
# On your local system | pre-requisite: Azure CLI
az login

# Create a new Service Principal for terraform to deploy resources
az ad sp create-for-rbac --name <service_principal_name> --role Contributor --scopes /subscriptions/<subscription_id>

az ad sp create-for-rbac --name terraformsp --role Owner --scopes /subscriptions/37a0d9a9-47a6-4584-a1bf-a7625714ce1e
```

- The output of above command will have below details:

```
{
  "appId": "747eb8aa-7e04-447e-ac9e-5f8e06b3c417",
  "displayName": "terraformsp",
  "password": "z9_m-TMPAKVmfNibjJ",
  "tenant": "9c4a41ae9748f2d44da"
}

# Keep the details handy and at very secure place (eg. Azure Vault)
```

## Step-08: Update the provider details of your Terraform manifest

- Navigate to [providers.tf](./tf-manifests/providers.tf)
- Under providers section, add the service principal details that we got from the previous step:

```
  subscription_id = "37a0d9a9-47625714ce1e"
  tenant_id       = "9c4a49748f2d44da"
  client_id       = "747eb86b3c417"
  client_secret   = "z9_8Q~mAKVmfNibjJ"
```

## Step:08: Save the Terraform manifest and check-in the code

## Step-07: Trigger the Azure Pipeline

## Step-08: Verify the deployed Sentinel resources
