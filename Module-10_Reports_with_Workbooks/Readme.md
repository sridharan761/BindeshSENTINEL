# Microsoft Sentinel Workbooks

- Sentinel Workbooks provide interactive reports that can be used to visualize
  your security and compliance data.
- Workbooks combine text, queries, and parameters to make it easy for developers to:
  - Create mature visualizations, and they provide advanced filtering
  - Drill-down capabilities
  - Advanced dashboard navigations, and more.
- You can also edit and customize the visualizations to meet needs using simple dropdown menus.

## Lab-01: View existing Sentinel Workbooks Templates

- **Permission Required**: Atleast **Reader** role on the resource group to which the Microsoft Sentinel workspace belongs.
- [Azure Portal](https://portal.azure.com) >> **Microsoft Sentinel** >> **Workbooks** >> **Templates**
- For e.g., search for `Azure Activity Log Workbook` >> The Azure Activity blade appears.
- Click the **View Template** button to see what the Workbook looks like
  without the data.
- **NOTE**: If your Workbook appears fully empty, it is because you don't have a data connector that is ingesting the data needed to feed this Workbook. When the connector is working properly, the Workbook template will have graphs filled with data points.

## Lab-02: View and make changes to the `Data Collection Health Monitoring` Workbook

- **Permissions required**: **Workbook reader** or **Workbook contributor** permissions on the resource group of the Microsoft Sentinel workspace.
- Follow the steps below to view and make changes to the Data
  Collection Health Monitoring Workbook:
  - Sign-in to Azure Portal as a _Reader_ or _Contributor_ on the resource group to which the Microsoft Sentinel workspace belongs.
  - **Microsoft Sentinel** >> **Workbooks** >> and search for **Data Collection Health Monitoring** workbook >> **View Template**
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
