# Lab - Extract incident entities with non-native actions

- Entity mapping enriches alerts and incidents with information essential for any investigative processes and remedial actions that follow.
- Microsoft Sentinel playbooks include these native actions to extract entity info:
  - Accounts
  - DNS
  - File hashes
  - Hosts
  - IPs
  - URLs
- In addition to these actions, analytic rule entity mapping contains entity types that aren't native actions, like malware, process, registry key, mailbox, and more.

## Overview

- Create a playbook with an incident trigger and run it manually on the incident.
- Initialize an array variable.
- Filter the required entity type from other entity types.
- Parse the results in a JSON file.
- Create the values as dynamic content for future use.

## Pre-requisites

- An Azure subscription. Create a free account if you don't already have one.
- An Azure user with the following roles assigned on the following resources:
- **Microsoft Sentinel Contributor** on the Log Analytics workspace where Microsoft Sentinel is deployed.
- **Logic App Contributor**, and **Owner** or equivalent, on whichever resource group will contain the playbook created in this tutorial.
- A (free) VirusTotal account will suffice for this tutorial. A production implementation requires a VirusTotal Premium account.

## Step-01: Create a playbook with an incident trigger

## Step-02: Initialize an Array variable

## Step-03: Select an existing incident

## Step-04: Filter the required entity type from other entity types

## Step-05: Parse the results to a JSON file

## Step-06: Use the new values as dynamic content for future use (eg. Email Notification)
