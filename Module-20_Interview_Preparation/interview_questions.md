# Interview Questions

## Self-related Questions

- **Ques-01**: Can you please introduce yourself and your Cyber security experience?

  - How you started your IT career?
  - Mention your Total IT Exp with relavant exp into Cyber security
  - What you do in your project as a cyber security expert/SIEM Expert
  - Projects you've worked before as a SIEM Expert
  - SIEM, Cyber security technologies you've worked upon so far

- **Ques-02**: How do you stay up-to-date with the latest cyber security trends and technologies?

  - Describe your approach for keeping yourself up-to-date with trending devops technologies including:
    - Reading Blogs (Official)
    - Attending Conferences (AWS, HashiCorp, Linux, KubeCon, CloudNativeCon, DockerCon)
    - Participating in online communities

- **Ques-03**: What are some of the problems/challenges you've faced while working on a security project? | And how did you overcome from it?

- **Ques-04**: Have you designed/planned/implemented any end-to-end cyber security solution before? If yes, kindly explain end-to-end process.
  - https://learn.microsoft.com/en-us/azure/sentinel/design-your-workspace-architecture

## Project related Questions

- **Ques-01**: Tell me something about your roles and responsibilities as a Cyber Security Engineer/Analyst/Expert in your previous projects.

- **Ques-02**: Explain how will you design a security solution for an organization (step-by-step)?

- **Ques-03**: What are your day-to-day activities as a Cyber security Engineer?

- **Ques-04**: Did you use any cloud technologies in your project? like AWS/Azure/GCP/Salesforce/Splunk/. If yes, explain more about the implementation.

- **Ques-05**: What is your Project Team (SOC) size? Tell us more about the team structure.

  - Tier-01, Tier-02, Tier-03
  - Roles: Security Engineers, Cyber Security Analysts, SOC Analyst, CSO

- **Ques-06**: Tell us more about the projects that you have worked upon so far.
  - [Monitor hybrid security using Microsoft Defender for Cloud and Microsoft Sentinel](https://learn.microsoft.com/en-us/azure/architecture/hybrid/hybrid-security-monitoring)
  - [Microsoft Sentinel automated responses](https://learn.microsoft.com/en-us/azure/architecture/solution-ideas/articles/microsoft-sentinel-automated-response)
  - [https://learn.microsoft.com/en-us/azure/architecture/example-scenario/data/sentinel-threat-intelligence](https://learn.microsoft.com/en-us/azure/architecture/example-scenario/data/sentinel-threat-intelligence)
  - [Design your Microsoft Sentinel workspace architecture](https://learn.microsoft.com/en-us/azure/sentinel/design-your-workspace-architecture)

## Technical Questions

- **Ques-01: Why is Microsoft Sentinel referred to as a Cloud Native SIEM?**

- **Ques-02: In Microsoft Sentinel, how many days of data retention are free?**

- **Ques-03: What are some of the different types of data connectors that Microsoft Sentinel supports?**

- **Ques-04: In Microsoft Sentinel, what language is used to query data?**

- **Ques-05: How many custom Azure rules can you create per directory?**

- **Ques-06: What are the various Microsoft Sentinel specific Azure roles (RBAC)?**

- **Ques-07**: Explain various components of Microsoft Sentinel Architecture?

- **Ques-08**: Does Azure Sentinel support hybrid cloud deployments? If yes, then how?

  - Yes, Azure Sentinel supports hybrid cloud deployments. This is done by connecting your on-premises data sources to Azure Sentinel via the Azure Sentinel Connector. This allows you to collect and analyze data from your on-premises data sources in Azure Sentinel, providing you with a unified view of your entire environment.

- **Ques-09**: What are the different types of data sources supported by Azure Sentinel?

  - Azure Sentinel supports a variety of data sources, including but not limited to Azure Activity Logs, Azure Monitor Logs, Azure Security Center, Microsoft 365 Defender, and third-party data sources.

- **Ques-10**: What is the difference between Log Analytics and Sentinel?

  - Log Analytics is a service in Azure that helps you collect and analyze data from your resources in Azure. Sentinel is a security monitoring and analytics service that is built on top of Log Analytics. Sentinel provides you with the ability to detect, investigate, and respond to threats in your environment.

- **Ques-11**: How pricing works with Microsoft Sentinel?

  - Azure Sentinel is a free service, however you do incur charges for the data ingested into the service.
  - These charges depend on the size and volume of the data, and are typically around $0.30 per GB.

- **Ques-12**: What are the limitations of using Azure Sentinel for threat detection?

- **Ques-13**: What are some common use cases for Azure Sentinel?

  - Azure Sentinel is a cloud-native security information event management (SIEM) and security orchestration automated response (SOAR) platform. It can be used to detect and investigate threats, as well as automate responses to incidents. Some common use cases for Azure Sentinel include:

    - Monitoring for suspicious activity and investigating potential threats
    - Detecting and responding to security incidents
    - Automating security operations
    - Correlating data from multiple data sources for better threat detection

- **Ques-15**: What are alerts in the context of Microsoft Sentinel?

  - Alerts in Sentinel are generated when certain conditions are met that indicate potential security issues.
  - These conditions can be based on specific events, log data, or other factors.
  - Once an alert is generated, it can be investigated further to determine if there is indeed a security issue that needs to be addressed.

- **Ques-16**: What are Data Connectors? Which data connectors have you used in your previous projects?

- **Ques-17**: What is KQL? Why is it important?

  - KQL is the query language used by Azure Sentinel.
  - It is important because it allows you to query data stored in Azure Sentinel in order to generate insights and detect anomalies.

- **Ques-18**: As a best practice, where should I store sensitive information like passwords or API keys when setting up a new connection?

  - You should store sensitive information like passwords or API keys in **Azure Key Vault**.

- **Ques-19**: What are the main differences between Azure Security Center and Azure Sentinel?

  - Azure Security Center is a security management tool that helps you protect your resources in Azure.
  - Azure Sentinel is a security analytics tool that helps you detect and investigate threats.

- **Ques-20**: What are the different types of Analytics rule?

- **Ques-21**: What are the various best practices for Microsoft Sentinel?

  - https://learn.microsoft.com/en-us/azure/sentinel/best-practices

- **Ques-22**: What are **False positives** in cyber security? How will reduce the false positives?

- **Ques-23**: What are various licenses required in order to secure Azure Resources + Microsoft 365 applications?

- **Ques-24**: What are managed identities in Microsoft Azure? Have you used it anywhere in your Sentinel based solution?

  - Managed identities are meant for authentication azure resources to communicate with other resources

- **Ques-25**: What are Red teams, Blue teams and Purple teams in a SOC?

- **Ques-26**: How will you test a security solution by simulating an attack?
  - May be by using Pentesting tool, like Kali linux, Caine Linux
- Ques-27: What are IoC in cyber security?

  - Indicator of Compromise

- **Ques-28**: Explain the difference between SIEM, SOAR, EDR, XDR type of security solutions with a use-case.

- **Ques-29**: Explain the role of Playbooks in Sentinel. How will you integrate Sentinel with a Playbook (Logic App)?

  - Playbooks in Azure Sentinel are automated response procedures that help organizations respond swiftly to security incidents.
  - They enable the orchestration of various actions, such as sending notifications, blocking users, or initiating remediation steps.

- **Ques-30**: Can you explain the process of creating custom detection rules in Microsoft Sentinel?

  - To create custom detection rules in Sentinel, we define specific conditions and triggers that indicate potential security threats.
  - This customization allows us to adapt the detection capabilities to the unique security requirements of our organization.
  - By tailoring the rules, we can enhance our ability to identify and respond to specific threats.

- **Ques-31**: How does Azure Sentinel handle threat hunting?

  - Azure Sentinel facilitates threat hunting through its advanced querying capabilities using Kusto Query Language (KQL).
  - Security professionals can proactively search for potential threats, anomalies, and patterns in the vast amount of data collected by Sentinel.

- **Ques-32**: Can you explain the concept of User and Entity Behavior Analytics (UEBA) in Azure Sentinel?

- **Ques-33**: How does Azure Sentinel assist in compliance management?

  - Azure Sentinel aids in compliance management by providing tools for monitoring and analyzing security data to ensure adherence to regulatory requirements.
  - It allows organizations to generate compliance reports, track security incidents, and demonstrate compliance with industry standards.

- **Ques-34**: How does Azure Sentinel handle log retention and storage?

  - Azure Sentinel provides flexible log retention and storage options, allowing organizations to tailor their data retention policies based on specific needs and compliance requirements.
  - With the ability to scale horizontally, Sentinel ensures efficient and cost-effective log storage without compromising on data availability.

- **Ques-35**: Write a sample query for fetching logs that satisfy a condition.
  - https://github.com/reprise99/Sentinel-Queries
  - [Sentinel KQL queries](../Module-XX_Assignments/00_Sentinel_Tables/Readme.md)
