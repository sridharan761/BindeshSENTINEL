# Microsoft Sentinel Workbooks

- Sentinel Workbooks provide interactive reports that can be used to visualize
  your security and compliance data.
- Workbooks combine text, queries, and parameters to make it easy for developers to:
  - Create mature visualizations, and they provide advanced filtering
  - Drill-down capabilities
  - Advanced dashboard navigations, and more.
- You can also edit and customize the visualizations to meet needs using simple dropdown menus.

## [Commonly used Microsoft Sentinel Workbooks](https://learn.microsoft.com/en-us/azure/sentinel/top-workbooks)

## Lab-01: View existing Sentinel Workbooks Templates

- **Permission Required**: Atleast **Reader** role on the resource group to which the Microsoft Sentinel workspace belongs.
- [Azure Portal](https://portal.azure.com) >> **Microsoft Sentinel** >> **Workbooks** >> **Templates**
- For e.g., search for `Azure Activity Log Workbook` >> The Azure Activity blade appears.
- Click the **View Template** button to see what the Workbook looks like
  without the data.
- **NOTE**: If your Workbook appears fully empty, it is because you don't have a data connector that is ingesting the data needed to feed this Workbook. When the connector is working properly, the Workbook template will have graphs filled with data points.

## Lab-02: View and make changes to the `Data Collection Health Monitoring` Workbook

- Prerequisites

  - **Permissions required**:
    - **Workbook reader** or
    - **Workbook contributor** permissions on the resource group of the Microsoft Sentinel workspace.
  - **Data connector**: Data collection health monitoring

- Follow the steps below to view and make changes to the Data
  Collection Health Monitoring Workbook:

  - Sign-in to Azure Portal as a _Reader_ or _Contributor_ on the resource group to which the Microsoft Sentinel workspace belongs.
  - **Microsoft Sentinel** >> **Workbooks** >> and search for **Data Collection Health Monitoring** workbook >> **View Template**.

  - If your environment has multiple workspaces, this Workbook will retrieve information about the following workspace items:
    - **Resource group**
    - **Geolocation**
    - **Data retention**
    - **Last update**
    - **Daily data cap**
    - **License**
  - You can also use the **TimeRange** option to visualize more or less than seven days, customize which Subscription you want to consider, and select the individual workspace.
  - You can also use the **Data Collection Anomalies** tab to detect potential anomalies in the data collection process by table and data source.

## Lab-03: Creating custom `Sentinel Workbooks`

- Sign-in to Azure portal.
- **Microsoft Sentinel** >> under **Threat management** section >> select **Workbooks** >> **Add workbook**.
- To edit the workbook, select **Edit**, and then add text, queries, and parameters as necessary.
- **Workbook to Visualize changes in the volume and severity of Security Alerts**. Click the **Done Editing** button to finish.
- Now add a pie chart displaying the **Security Events** that have occurred over the last six months, sorted by severity.
- To do this, select **Edit** at the top of the Workbook and scroll to the right of the screen. Now, select the second Edit button and add the following query:

```
You can now test by clicking the **Run Query** button.

```

- You can now test by clicking the **Run Query** button >> **Done Editing**
- Now, **create a new time chart displaying changes in the number of security alerts by severity over the last year**.
- Click the **Edit** button, and then click the **Add** button, followed by the **Add Query** option:

```
SecurityAlert
| where TimeGenerated >= ago(365d)
| summarize Count=count() by bin(TimeGenerated, 1d), AlertSeverity
```

- From the **Visualization** dropdown menu, select **Time Chart** and click the **Run Query** button >> **Done Editing**.
