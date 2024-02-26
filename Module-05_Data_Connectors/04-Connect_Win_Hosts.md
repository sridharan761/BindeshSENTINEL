# Connect `Windows hosts` to Microsoft Sentinel

## Step-01: Plan for Windows hosts security events connector

- Based on your requirements, you have the option of installing an agent on each windows device to forward events to Microsoft Sentinel.
- There are two agents available:
  1. Windows Security Events via AMA Connector
  2. Security Events via Legacy Agent Connector
  - It can be used to configure a Windows Event Collector device to receive events from other Windows devices.
  - The Windows Event Collector device would then forward events to Microsoft Sentinel with the Windows Forwarded Events connector.
  - Non-Azure VM's/devices require Azure Arc.

```
Info: Azure Arc is an agent installed on the device or VM that allows the device to be managed the same as an Azure VM. Azure Arc provides other functionality including running Azure based services in a hybrid environment.
```

## Step-02: Connect using the `Windows Security Events` via AMA Connector
