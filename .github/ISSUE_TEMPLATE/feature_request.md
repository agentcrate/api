---
name: Feature Request
about: Suggest a new API, RPC, or message type
title: "[feat] "
labels: enhancement
assignees: ''
---

## Problem

A clear description of the problem this API change would solve.

*Example: "There's no way for the CLI to query agent metadata from the registry."*

## Proposed API

Describe the new service, RPC, or message type. Include a proto sketch if possible.

```protobuf
// Example
rpc GetAgentMetadata(GetAgentMetadataRequest) returns (GetAgentMetadataResponse) {}
```

## Alternatives Considered

Describe any alternative API designs you've considered.

## Consumer Impact

Which downstream repos would consume this new API?

- [ ] `crate` (CLI)
- [ ] `cratehub` (API server)
- [ ] `cratehub-web` (frontend)

## Additional Context

Any other context, related issues, or references.
