# Introduction to Microsoft Sentinel Data Connectors

## What are Data Connectors?

- Data is sent to the Microsoft Sentinel workspace by configuring the provided data connectors.
- The data connectors are included in built-in `Content Hub solutions` for Microsoft 365 services and Azure.
- You may ingest data from Microsoft 365, Microsoft Defender XDR, Azure resources, non-azure virtual machines, and network appliances into Sentinel using Data connectors.

## Step-01: Ingest log data with data connectors

- To collect log data, you need to connect your data sources with Microsoft Sentinel Data Connectors
- The Data Connectors are included with Content Hub Solutions provided by Microsoft Sentinel.
- After you install a Content Hub Solution, installed Data Connectors are displayed in Microsoft Sentinel under the `Configuration | Data connectors` menu section.
- When you select the _Open connector_ page, the detailed connector page is split and has a left half and a right half.

## Step-02: Understand data connector providers

### 2.1 Microsoft Azure Services

Some of the connectors for Microsoft and Azure-related services include:

- Microsoft Entra ID
- Azure Activity
- Microsoft Entra ID Protection
- Azure DDoS Protection
- Microsoft Defender for IoT
- Azure Information Protection
- Azure Firewall
- Microsoft Defender for Cloud
- Azure Web Application Firewall (WAF) (formerly Microsoft WAF)
- Domain name server
- Office 365
- Windows firewall
- Security Events

### 2.2 Vendor connectors

- Microsoft Sentinel provides an ever-growing list of vendor-specific data connectors.
- These connectors primarily use the `Common Event Format (CEF)` and `Syslog` connector as their foundation.

### 2.3 Microsoft Defender XDR

The Microsoft Defender XDR data connector provides alerts, incidents, and raw data from the Microsoft Defender XDR products including:

- Microsoft Defender for Endpoint
- Microsoft Defender for Identity
- Microsoft Defender for Office 365
- Microsoft Defender for Cloud Apps

### 2.4 Custom connectors using the Log Analytics API

- You can use the Log Analytics Data Collector API to send log data to the Microsoft Sentinel Log Analytics workspace.
