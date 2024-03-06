# Respond to threats by using playbooks with automation rules in Microsoft Sentinel

## Create Resource Group RG-01

## Create Log Analytics Workspace in RG-01

## Create Sentinel Workspace in RG-01

## Install Data Connectors (Entra ID, ServiceNow etc) in Sentinel Workspace

## Create Analytics Rule (Scheduled/NRT)

- **Rule Query**

```
AuditLogs
| where OperationName == "Add user" or OperationName == "Delete user"

```

- **Run query every**: 5 mins
- **lookup data from the last**: 30 mins
- **Alert threshold**: isGreater than 0
- **Event grouping**: Group all event into single alert
- **Automated Response**: <no_automated_response_now>

## Create a Playbook with Incident Trigger

## Update the Playbook permissions

- Navigate to your **Microsoft Sentinel workspace** >> **Settings** >> **Playbook permissions** >> ""Configure Permissions""
- Choose the resource groups that contain the playbooks you want to give Microsoft Sentinel permissions to run.
- Click **Apply** button

## Update the Playbook RG permissions (RBAC)

- **Azure Security Insights**: Microsoft Sentinel Automation Contributor
- **Your Azure Role**: Owner (Subscription/RG)

**NOTE**: Fix for "_Saving automation rule 'rule' failed. Error: Caller is missing required playbook triggering permissions on playbook resource_" error

## Update the `Managed Identity permission` with Microsoft Entra ID roles

- Navigate to your **playbook** >> **Identity** >> Enable the System assigned managed identity.
- Copy the **ObjectID** and keep it handy.
- Now switch to "**Microsoft Entra ID**" service >> Enterprise Applications.
- Clear the filter and list **All Applications**.
- Now paste the ObjectID of your managed identity in search field; you should see your playbook MI in results

- Now switch to Microsoft Entra ID >> Roles and Administrators >> Search **User Administrator** role
- Select the **User Administrator** >> **Add Assignments** >> Search the objectID of managed identity, select the service principal from the list and click on **Add** button

**Note**: Fix for scenario : if you're not getting **Microsoft Entra ID action** in your playbook

## Create an `Automation Rule`

## Updated the Sentinel Playbook with Entra ID based actions (Update user, Delete user etc.)
