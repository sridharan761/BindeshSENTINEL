# Common Event Format (CEF) and Syslog connector

- If there's no vendor-provided connector, you can use the generic Common Event Format(CEF) or Syslog Connector.

## Syslog

- **Syslog** is an event logging protocol that is common to Linux. Applications send messages that may be stored on the local machine or delivered to a Syslog collector.

## Common Event Format (CEF)

- **Common Event Format (CEF)** is an industry-standard format on top of Syslog messages, used by many security vendors to allow event interoperability among different platforms.

## `Syslog` vs `CEF`

- `CEF` is always a superior choice because the log data is parsed into predefined fields in the CommonSecurityLog table.
- `Syslog` provides header fields, but the raw log message is stored in a field named **SyslogMessage** in the `Syslog` table.
- For the Syslog data to be queried, you need to write a parser to extract the specific fields.

## Connector Architectures

- To connect the `CEF` or `Syslog` Collector to Microsoft Sentinel, the agent must be deployed on a dedicated Azure virtual machine (VM) or an on-premises system to support the appliance's communication with Microsoft Sentinel.
- You can deploy the agent automatically or manually.
- Automatic deployment is only available if your dedicated machine is connected to Azure Arc or is a Virtual Machine in Azure.

### On-premises systems sending `Syslog data` to Microsoft Sentinel using Azure VM as AMA

The following diagram depicts on-premises systems sending Syslog data to a dedicated Azure VM running the Microsoft Sentinel agent:

<ARCHITECTURE_DIAG>

### On-premises systems sending `Syslog data` to Microsoft Sentinel using on-premise system as AMA

The following diagram illustrates on-premises systems sending Syslog data to a dedicated on-premises system running the Microsoft Sentinel agent.

<ARCHITECTURE_DIAG>

## View connected hosts in Microsoft Sentinel

- Navigate to **Microsoft Sentinel** service
- From left-side panel, select `Data Connectors`. It will all the installed connectors and can be filtered to show the ones with a Connected status.
- The count of Windows and Linux hosts connected with an agent is available in the **Log Analytics workspace**.
- To see your connected hosts do the following steps:
  - Select **Settings** >> **Workspace Settings**
  - In Log Analytics Settings area, select **Agents**
  - There will be two tabs to view - one for `Windows` and another for `Linux`.
