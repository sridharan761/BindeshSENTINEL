# Threat Hunting with Microsoft Sentinel

## What is Threat Hunting?

- **Threat hunting** is about proactively searching for threats or a set of activities that you have not previously detected.
- The main difference between _incident response (IR)_ and _alert triage_, where you are investigating a **detection** or an **alert**.

## Understanding Threat Hunting

- Investigating an **incident** or an **alert** starts with the assumption of a _true positive_.
- **Threat hunting** starts with a _hypothesis_.
- This might be a any other information stream that triggers you to reassess the current state of your SOC's detection capabilities.

### What Hypothesis we are referring to?

- Can you find traces of a potential breach or compromise?
- Would your organization be vulnerable to the threat you read about somewhere on a blog, twitter post?

**To answer these questions, you would build a hypothesis.**

### How to build the `Threat Hunting Hypothesis`?

- Before you start building your hypothesis, it's very important to understand the threat that you are looking for and how it would look like in your environment.

- You should build your hypothesis based on following:

1. **Knowledge**

   - About the threat itself, but also about how threat hunting in Microsoft Sentinel works.

2. **Context**

   - The threat is based on which vulnerability?
   - Is the threat specific to an operating system, version, or application?
   - Under which circumstances can the threat occur?

3. **Data Depth**
   - Do I have the necessary level of logging or auditing enabled fro my resources?
   - Do I have the data ingested to find the threat?
4. **Data Width**

   - Do I have sufficient data sources coverage?

- Spending time on your hypothesis preparation is equally important as your hunting effort.

- Hunting for suspicious logins might sound interesting, but that is most likely too broad and needs more focus. Are you going to look for any type of login, like the ones that occurred last week or last month?
- Also, be prepared to not find anything. That is not a bad thing; threat hunting is a an iterative process that you will be continuously executing and evolving over time.

## Threat Hunting in Microsoft Sentinel

### Activities you can perform with Sentinel hunts

- **Define a hypothesis**

  - Find inspiration from the MITRE map, recent hunting query results, content hub solutions, or generate your own custom hunts.

- **Investigate and take action**

  - Go deeper using UEBA entity pages and run entity specific playbooks on bookmarked entities
  - Use built-in actions to create new analytic rules, threat indicators, and incidents based on findings.

- **Investigate queries and bookmark results**

  - Run hunt related queries and investigate the results using the logs experience.
  - Bookmark results directly to your hunt to annotate your findings, extract entity identifiers, and preserve relevant queries.

- **Track your results**

  - Record the results of your hunt. Track if your hypothesis is validated or not and leave detailed notes in the comments.
  - Hunts automatically links new analytic rules and incidents. Track the overall impact of your hunting program with the metric bar.

- Microsoft Sentinel has a dedicated page for you to perform threat hunting.

- Open the Azure portal and sign in as a user who has _Microsoft Sentinel Reader_ or _Microsoft Sentinel Contributor_ privileges.
- Under the **Threat Management** section, click **Hunting**.

3. The Hunting page appears on the right side with several options to
   explore

## `Lab`: Hunt for Entra ID Events

### Step-01: Create a new Hunt

- Open the _Azure portal_ and sign in as a user who has Microsoft Sentinel Reader privileges.
- Under _Threat management_, click **Hunting** >> **New Hunt**
- Hunt Name: Entra ID Hunt
- Owner: <Any_User>
- Status: New
- Hypothesis: Unknown
- Click on **Create** button

### Step-02: Create a Hunt Query

- Navigate to **Hunting** section of Sentinel and select the Hunt we created in Step-01
- **Queries actions** >> **New Query**
- **Name**: Entra ID - New User Created
- **Query**:

```
AuditLogs
| where OperationName == "Add user"
```

- Tactics and Techniques:
  - **Tactics**: Persistence
  - **Techniques**: Create Account -> Cloud Account

### Step-03: Simulate the Hunt query criteria

### Step-04: Run the Hunt Queries

### Step-05: Verify the generated results

### Step-06: Update the Hunt configs

### Step-07: Create an Incident from Hunt after it is Validated
