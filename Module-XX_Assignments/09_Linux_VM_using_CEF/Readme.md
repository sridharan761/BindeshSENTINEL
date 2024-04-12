# Connect Linux hosts to Microsoft Sentinel using data connectors

- You are a Security Operations Analyst working at a company that implemented Microsoft Sentinel.
- You have to figure out how to connect log data from Linux virtual machines using the Common Event Formatting (CEF) via _Legacy Agent_ and _Syslog connectors_.

### Step-01: Access the Microsoft Sentinel Workspace

### Step-02: Connect a Linux Host using the Common Event Format connector

In this task, you will connect a Linux host to Microsoft Sentinel with the Common Event Format (CEF) via Legacy Agent connector.

- In the Microsoft Sentinel left menus, scroll down to the _Content management_ section and select **Content Hub**.
- In the **Content hub**, search for the **Common Event Format** solution and select it from the list.
- On the _Common Event Format_ solution page select **Install**.
- When the installation completes select **Manage**
- Select the Common Events Format (CEF) Data connector, and select Open connector page on the connector information blade.
- In the _Configuration section_, under the **Instructions** tab, copy to the clipboard the command `Install the CEF collector on the Linux machine`.
- Connect to your Linux Server over SSH
- You are now ready to paste the 1.2 Install the CEF collector on the Linux machine command from the earlier step. Make sure that script from Azure is in the clipboard and paste it.

### Step-03: Connect a Linux host using the Syslog connector
