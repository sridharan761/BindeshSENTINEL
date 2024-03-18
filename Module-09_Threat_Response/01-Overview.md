# Automate threat response with `playbooks` in Microsoft Sentinel

## Why Sentinel Playbook?

- Many times SOC analysts are overwhelmed with large volume of alerts and incidents.
- This results all too often in situations where many alerts are ignored and many incidents aren't investigated, leaving the organization vulnerable to attacks that go unnoticed.
- Many of these alerts and incidents conform to recurring patterns that can be addressed by specific and defined sets of remediation actions.
- Analysts are also tasked with basic remediation and investigation of the incidents they do manage to address.
- These kind of remediation actions can be automated to some extent using **playbooks**.
- Automating remidiation actions help SOC in being more productive and efficient, allowing analysts to devote more time and energy to investigative activity.

## What is a Playbook?

- A **playbook** is a collection of these remediation actions that you run from Microsoft Sentinel as a routine, to help automate and orchestrate your threat response. It can be run in two ways:
  - **Manually** on-demand, on a particular entity or alert
  - **Automatically** in response to specific alerts or incidents, when triggered by an automation rule.
- Ex. If an account and machine are compromised, a playbook can isolate the machine from the network and block the account by the time the SOC team is notified of the incident.

## Playbook Templates

- A playbook template is a prebuilt, tested, and ready-to-use workflow that can be customized to meet your needs.
- Follows all the best practice relevant to playbook development.
- You create a playbook (an editable copy of the template) from the templates.

## From where can I get the Playbooks?

You can get playbook templates from the following sources:

- On the **Automation** page, the Playbook templates tab lists the playbook templates installed. Multiple active playbooks can be created from the same template.
- Playbook templates are available as part of product solutions or standalone content that you install from the **Content hub page** in Microsoft Sentinel.
- From [Microsoft Sentinel GitHub repository](https://github.com/Azure/Azure-Sentinel/tree/master/Playbooks)
