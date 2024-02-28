# Threat Detection with Microsoft Sentinel Analytics

Microsoft Sentinel Analytics provides an intelligent solution that you can use to detect potential threats and vulnerabilities in your organizations.

## Learning Objectives

- Explain the importance of Microsoft Sentinel Analytics.
- Explain different types of analytics rules.
- Create rules from templates.
- Create new analytics rules and queries using the analytics rule wizard.
- Manage rules with modifications.

## What is Microsoft Sentinel Analytics?

- Microsoft Sentinel Analytics helps you detect, investigate, and remediate cybersecurity threats.
- You can analyze historical data collected from your workstations, servers, networking devices, firewalls, intrusion prevention, sensors, and so on.
- By using analytics rules, you can trigger alerts based on the attack techniques that are used by known malicious actors.
- You can set up these rules to help ensure your SOC is alerted to potential security incidents in your environment in a timely fashion.

## Why use analytics rules for security operations?

- Identification of compromised accounts
- User behavior analysis to detect potentially suspicious patterns
- Network traffic analysis to locate trends indicating potential attacks
- Detection of data exfiltration by attackers
- Detection of insider threats
- Investigation of incidents
- Threat hunting

## Types of Sentinel Analytics Rules

- **Scheduled alerts**: Scheduled alerts analytics rules provide you with the highest level of customization. You can define your own expression using Kusto Query Language (KQL) to filter the security events, and you can set up a schedule for the rule to run.
- **NRT (Near Real Time) rules**
- **Fusion**
- **Anomaly**: Anomaly alerts are informational and identify anomalous behaviors.
- **Microsoft security**: You can configure Microsoft security solutions that are connected to Microsoft Sentinel to automatically create incidents from all alerts generated in the connected service.
- **Machine learning (ML) behavior analytics**
- **Threat Intelligence**

## Hands-on Labs:

### 01-Create an analytics rule from rule templates

### 02-Create an analytics rule from scratch

- **Analytics Rule Type**: Scheduled Alert/NRT/Fusion
- **General settings**
- **Set Rule logic** (KQL Query)
- **Incident settings**
  - Grouping alerts into a single incident/separate incident
- **Automated response**
- **Review** and **Create**

### 03-Manage existing analytic rules

- You can perform the following four actions on existing active rules:
  - Edit
  - Disable
  - Duplicate
  - Delete

### Exercise-01 - Threat detection with Microsoft Sentinel analytics

- **Task-01: Create a custom analytics rule**
  - Navigate to **Microsoft Sentinel** >> under Configuration, select **Analytics**.
  - **Analytics rule type**: Scheduled query rule
  - Set rule logic:
  ```
  AzureActivity
  | where OperationNameValue == "MICROSOFT.COMPUTE/VIRTUALMACHINES/DELETE"
  | where ActivityStatusValue == "Success"
  ```
  - In the Results **simulation** pane, select **Test with current data**, and then observe the results.
- **Task 2: Invoke an incident and review the associated actions**
  - In order to trigger the analtics rule, you must create an Azure VM and then delete it.
  - Once Azure VM is deleted, navigate to **Sentinel** >> **Incidents**
