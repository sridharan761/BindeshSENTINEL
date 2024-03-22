# CS-12: Plan, Design and Implement threat intelligence and SOAR solution for `Apache HTTP Servers`

## Scenario and Problem Statement

- You are a Security Operations Analyst working at a company that implemented Microsoft Sentinel.
- As part of the security team, you have been asked to join a company meeting related to security concern.
- You already created Scheduled and Microsoft Security Analytics rules.
- You need to **configure Microsoft Sentinel to perform Entity Behavior Analytics (UEBA)** to discover anomalies and provide entity analytic pages.

## Technical Requirements needed to implement this solution

### 01: Explore Entity Behavior in Microsoft Sentinel

In this task, you will explore Entity behavior analytics in Microsoft Sentinel.

- Log in to Azure Portal, https://portal.azure.com.

- Locate Microsoft Sentinel service and select your Microsoft Sentinel Workspace you created earlier.
- Select the `Entity behavior` option from the left-side panel.
- On the popup from Entity behavior settings, select Set UEBA.
- On the next page, select **Set UEBA**.
- Review the three pre-requisite steps to enable entity behavior analytics.
- Close the Entity behavior configuration page by selecting the ‘x’ at the top right of the page.
- Scroll down the Settings page and read through the Anomalies paragraph.
- Select Go to analytics in oder to configure the anomalies.

### 02: Confirm and review Anomalies rules

### 03: Create Analytics rule from the Anomalies rule templates

**Note**: You can upgrade the Flighting rule to Production by changing the setting on this rule and save the changes. The Production rule will become the Flighting rule afterwards.
