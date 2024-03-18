# MITRE ATT&CK Framework (Threat Detection)

## Overview

- MITRE ATT&CK is a publicly accessible knowledge base of tactics and techniques that are commonly used by attackers, and is created and maintained by observing real-world observations.
- MITRE ATT&CK official website link: https://attack.mitre.org/.
- MITRE ATT&CK knowledge base is used by various organizations to develop specific threat models and methodologies that are used to verify security status in their environments.

## How to use the MITRE page in Microsoft Sentinel ?

- **MITRE ATT&CK** section in Microsoft Sentinel can be used to view the detections already active in your workspace, and those available for you to configure, to understand your organization's security coverage, based on the tactics and techniques from the MITRE ATT&CK framework.

### Step-01: `View` current MITRE coverage

- In Microsoft Sentinel, in the **Threat management** menu on the left, select MITRE.
- By default, both **currently active scheduled query** and **near real-time (NRT) rules** are indicated in the coverage matrix.
- Use the _legend_ at the top-right to understand how many detections are currently active in your workspace for specific technique.
- Use the _search bar_ at the top-left to search for a specific technique in the matrix, using the technique name or ID, to view your organization's security status for the selected technique.
- Select a specific technique in the matrix to view more details on the right. There, use the links to jump to any of the following locations:
  - Select View technique details for more information about the selected technique in the MITRE ATT&CK framework knowledge base.
  - Select links to any of the active items to jump to the relevant area in Microsoft Sentinel.

### Step-02: `Simulate possible coverage` with available detections

- In the MITRE coverage matrix, **simulated coverage** refers to _detections that are available, but not currently configured in your Microsoft Sentinel workspace_.
- View your simulated coverage to understand your organization's possible security status, were you to configure all detections available to you.
- In Microsoft Sentinel >> select MITRE ATT&CK.
  - Use the legend at the top-right to understand **how many detections**, including analytics rule templates or hunting queries, are available for you to configure.
  - Use the search bar at the top-left to **search for a specific technique** in the matrix, using the technique name or ID, to view your organization's simulated security status for the selected technique.
- Select a specific technique in the matrix to view more details on the right.
  - Select _View technique details_ for more information about the selected technique in the MITRE ATT&CK framework knowledge base.
  - Select links to any of the simulation items to jump to the relevant area in Microsoft Sentinel.

### Step-03: Use the MITRE ATT&CK framework in analytics rules and incidents

- **TIP**: Having a scheduled rule with MITRE techniques applied running regularly in your Microsoft Sentinel workspace enhances the security status shown for your organization in the MITRE coverage matrix.
- **Analytics Rules**

  - When configuring analytics rules, select specific MITRE techniques to apply to your rule.
  - When searching for analytics rules, filter the rules displayed by technique to find your rules quicker.

- **Incidents**

  - When incidents are created for alerts that are surfaced by rules with MITRE techniques configured, the techniques are also added to the incidents.

- **Threat Hunting**
  - When creating a new hunting query, select the specific tactics and techniques to apply to your query.
  - When searching for active hunting queries, filter the queries displayed by tactics by selecting an item from the list above the grid.
  - Select a query to see tactic and technique details on the right.

## [References]()
