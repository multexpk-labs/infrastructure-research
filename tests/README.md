# Testing Infrastructure Research

Research repositories should test the reusable parts of their tooling without requiring access to private infrastructure.

## Useful Tests

- shell script syntax checks
- Python unit tests for parsing/reporting logic
- fixture-based network output parsing
- deterministic benchmark-record validation
- configuration schema validation
- regression tests for previously observed failures

## Public CI

Use synthetic fixtures and disposable environments. Do not make CI depend on customer servers, private VPNs, production databases, private DNS zones, or secret credentials.

For shell tooling, ShellCheck is useful. For Python, standard `unittest` or `pytest` can be used where appropriate.

## Research Quality

A passing test does not prove infrastructure performance. Tests verify behavior of the research tooling; experiments provide evidence about the infrastructure being studied.
