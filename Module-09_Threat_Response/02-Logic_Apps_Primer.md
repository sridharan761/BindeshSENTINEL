# Azure Logic Apps Basics

## Overview

- Playbooks in Microsoft Sentinel are based on workflows built in **Azure Logic Apps**.
- Logic Apps helps you schedule, automate, and orchestrate tasks and workflows across systems throughout the enterprise.
- Azure Logic Apps communicates with other systems and services using **connectors**.

## Logic Apps key attributes

- **Managed connector**

  - A set of actions and triggers that wrap around API calls to a particular product or service.
  - Azure Logic Apps offers hundreds of connectors to communicate with both Microsoft and non-Microsoft services.

- **Custom connector**
  - You might want to communicate with services that aren't available as prebuilt connectors.
- **Microsoft Sentinel connector**
  - To create playbooks that interact with Microsoft Sentinel, use the Microsoft Sentinel connector.
- **Trigger**
  - A connector component that starts a workflow, in this case, a playbook.
  - The Microsoft Sentinel trigger defines the schema that the playbook expects to receive when triggered.
  - The Microsoft Sentinel connector currently has three triggers:
    - **Alert Trigger**
    - **Incident Trigger**
    - **Entity Trigger**
- **Actions**
  - Actions are all the steps that happen after the trigger. They can be arranged sequentially, in parallel, or in a matrix of complex conditions.

## Permissions Required

### Azure Roles for Logic Apps

- **Logic App Contributor** lets you manage logic apps and run playbooks, but you can't change access to them (for that you need the Owner role).
- **Logic App Operator** lets you read, enable, and disable logic apps, but you can't edit or update them.

### Azure Roles for Microsoft Sentinel

- **Microsoft Sentinel Contributor role** lets you attach a playbook to an analytics or automation rule.
- **Microsoft Sentinel Responder role** lets you access an incident in order to run a playbook manually. But to actually run the playbook, you also need...
- **Microsoft Sentinel Playbook Operator role** lets you run a playbook manually.
- **Microsoft Sentinel Automation Contributor** allows automation rules to run playbooks. It is not used for any other purpose.

## Steps for creating a Playbook

### Step-01: Define the automation scenario

### Step-02: Build your logic app

### Step-03: Test your logic app

### Step-04: Attach the playbook to an automation rule or an analytics rule, or run manually when required.

## Use-cases for Playbooks

### Collect data and attach it to the incident in order to make smarter decisions

### Playbooks can be used to sync your Microsoft Sentinel incidents with other ticketing systems

- Create an automation rule for all incident creation, and attach a playbook that opens a ticket in ServiceNow:
- Start when a new [Microsoft Sentinel incident](https://learn.microsoft.com/en-us/connectors/azuresentinel/#triggers) is created.
- Create a new ticket in [ServiceNow](https://learn.microsoft.com/en-us/connectors/service-now/).
- Include in the ticket the incident name, important fields, and a URL to the Microsoft Sentinel incident for easy pivoting.

### Use the SOC chat platform to better control the incidents queue

### Immediately respond to threats, with minimal human dependencies

- **Example**: Respond to an analytics rule that indicates a compromised user, as discovered by Microsoft Entra ID Protection:
- **Example**: Respond to an analytics rule that indicates a compromised machine, as discovered by Microsoft Defender for Endpoint:

### Random use-cases

- Blocking a compromised user.
- Blocking traffic from a malicious IP address in your firewall.
- Isolating a compromised host on your network.
- Adding an IP address to a safe/unsafe address watchlist, or to your external Configuration management database (CMDB).
- Getting a file hash report from an external threat intelligence source and adding it to an incident as a comment.
