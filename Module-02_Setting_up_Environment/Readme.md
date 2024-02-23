# Setup the Environment

There are few pre-requisites for deploying Microsoft Sentinel:

- Azure Tenant
- Azure Subscription (Active)
- Azure Resource Group
- Azure Log Analytics Workspace

## Step-01: Create an Azure Account (Free tier) with a Subscription

- Prerequisites: Valid phone no, Email Account, Credit Card
- In order to create a new Azure Account, navigate to https://azure.microsoft.com/en-in/free link and click on **Start Free** button.
- Provide your personal, contact and payment details and submit it.

## Step-02: Create an Azure _Resource Group_ for labs

- Sign-in to Azure portal
- Navigate to Resource Groups Dashboard, and click on **Create** button.
- Subscripton: <Azure_Subscription>
- Region: East US
- Resource Group: <Name_of_RG>
- Tags (optional)
- Click **Review and Create** button

## Step-03: Create an Azure _Log Analytics Workspace_

- Sign-in to Azure portal
- Navigate to **Log Analytics Workspaces** service
- Click on 'Create' button
- Subscription: <Azure_Subscription>
- Resource Group: <RG_Name>
- Name: Bin-Log-Analytics-WS
- Region: East US
- Tags: <Add_Tags>
- Click on 'Review and Create' button

## Step-04: Create a _Microsoft Sentinel Workspace_

## Step-05: Controlling access levels of Sentinel user with RBAC

- Microsoft Sentinel Responder
- Microsoft Sentinel Contributor
- Microsoft Sentinel Reader
- Microsoft Sentinel Playbook Operator
- Logic App Contributor
