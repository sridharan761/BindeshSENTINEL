# Respond to threats by using playbooks with automation rules in Microsoft Sentinel

## Step-01: Create Resource Group `Sentinel-RG`

- Navigate to Resource Group
- Provide RG details:
  - Name
  - Subscription
  - Region
  - Tags
- Click "Review and Create" button

## Step-02: Create Log Analytics Workspace in `Sentinel-RG`

## Step-03: Create Sentinel Workspace in `Sentinel-RG`

## Step-04: Install Data Connectors (Entra ID, ServiceNow etc) in Sentinel Workspace

## Step-05: Create Analytics Rule (Scheduled/NRT)

- **Rule Query**

```
AuditLogs
| where OperationName == "Add user" or OperationName == "Delete user"

# In order to generate some logs which suffice the above criteria, create/delete atleast one user in entra id
```

- **Run query every**: 5 mins
- **lookup data from the last**: 30 mins
- **Alert threshold**: isGreater than 0
- **Event grouping**: Group all event into single alert
- **Automated Response**: <no_automated_response_now>

## Step-06: Create a Playbook with Incident Trigger

- Navigate to **Microsoft Sentinel** >> **Automations** >> Click on **Create** button >> **Playbook with Incident trigger**
- **Name**
- **Subscription**
- **Resource Group**
- **Region**
- **Connection**: Connect with Managed Identity
- **Review and Create**

## Step-07: Update the Playbook permissions

- Navigate to your **Microsoft Sentinel workspace** >> **Settings** >> **Playbook permissions** >> ""Configure Permissions""
- Choose the resource groups that contain the playbooks you want to give Microsoft Sentinel permissions to run.
- Click **Apply** button

## Step-08: Update the Playbook RG permissions (RBAC)

- **Azure Security Insights**: Microsoft Sentinel Automation Contributor
- **Your Azure Role**: Owner (Subscription/RG)

**NOTE**: Fix for "_Saving automation rule 'rule' failed. Error: Caller is missing required playbook triggering permissions on playbook resource_" error

## Step-09: Update the `Managed Identity permission` with Microsoft Entra ID roles

- Navigate to your **playbook** >> **Identity** >> Enable the System assigned managed identity.
- Copy the **ObjectID** and keep it handy.
- Now switch to "**Microsoft Entra ID**" service >> Enterprise Applications.
- Clear the filter and list **All Applications**.
- Now paste the ObjectID of your managed identity in search field; you should see your playbook MI in results

- Now switch to Microsoft Entra ID >> Roles and Administrators >> Search **User Administrator** role
- Select the **User Administrator** >> **Add Assignments** >> Search the objectID of managed identity, select the service principal from the list and click on **Add** button

**Note**: Fix for scenario : if you're not getting **Microsoft Entra ID action** in your playbook

## Step-10: Create an `Automation Rule`

## Step-11: Updated the Sentinel Playbook with Entra ID based actions (Update user, Delete user etc.)
