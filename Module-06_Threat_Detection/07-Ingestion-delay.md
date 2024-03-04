# Ingestion Delay

## What is Ingestion Delay?

- It is the time delay between the log creation at the source and ingestion into the Sentinel.
- Ingestion delay can results in delayed scheduled rule triggers.
- Scheduled rules consider the timestamp of the data source and not the time of ingest.
