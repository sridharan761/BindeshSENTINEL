# Kusto Query Language (KQL)

## KQL Overview

- Kusto Query Language is used in Azure Monitor (and therefore in Microsoft Sentinel), including some additional Azure Monitor features, which allow you to:
  - Retrieve data,
  - Visualize data,
  - Analyze data,
  - Parse data in Log Analytics data stores
- Microsoft Sentinel is built on top of the Azure Monitor service and it uses Azure Monitor's Log Analytics workspaces to store all of its data.
- KQL was developed as part of the Azure Data Explorer service, and it's therefore optimized for searching through big-data stores in a cloud environment.
- A Kusto Query Language query is a read-only request to process data and return results – it doesn't write any data.

## KQL Query Syntax

- Kusto Query Language queries are made up of statements separated by semicolons.
- There are many kinds of statements, but only two widely used types that we'll discuss here:

  1. Tabular Expression Statements

  ```
  # Syntax
  TabularDataSource | Operator1 | Operator2 | RenderInstruction

  # TabularDataSource: String type parameter and specifies Table name.
  # Operator: Tabular data operators, such as filters and projections.
  # RenderInstructions:Rendering operators or instructions.

  # Sample KQL query
  Heartbeat | where ComputerIP == "10.20.1.156"
  ```

- The following list shows supported tabular data sources:
  - Table references
  - The tabular range operator
  - The print operator
  - An invocation of a function that returns a table

2. let statements

## KQL Operators

Some of the common KQL operators are as follows:

- where operator

```
# Example

Heartbeat | where field == 2
```

- count
- take
- project
- distinct
- sort
- top
- extend
- render

## KQL Functions

- Built-in Functions
- User-defined Functions
  - Stored Functions
  - Query-defined Functions
