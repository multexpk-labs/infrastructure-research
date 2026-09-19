# Capacity Planning

Capacity planning connects workload requirements to infrastructure resources.

## Inputs

- request rate
- concurrency
- CPU utilization
- memory footprint
- storage growth
- I/O requirements
- network throughput
- latency targets
- backup retention
- availability requirements

## Method

`Workload → Baseline → Bottleneck → Headroom → Growth → Failure Scenario → Capacity Decision`

Plan for expected growth and operational headroom rather than sizing only for today's average load.

## Bottlenecks

Measure CPU, memory, disk I/O, network, application workers, and database behavior separately before increasing infrastructure size.
