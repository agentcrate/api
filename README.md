<div align="center">

# api

**Protocol Buffer definitions for the AgentCrate platform.**

[![Buf](https://img.shields.io/badge/Buf-build-blue?style=flat-square&logo=buf)](https://buf.build/agentcrate/api)
[![License](https://img.shields.io/badge/License-Apache%202.0-blue?style=flat-square)](LICENSE)
[![CI](https://img.shields.io/github/actions/workflow/status/agentcrate/api/publish.yml?branch=main&style=flat-square&label=CI)](https://github.com/agentcrate/api/actions)

The single source of truth for all AgentCrate API contracts.

[Buf Schema Registry](https://buf.build/agentcrate/api) · [Documentation](https://agentcrate.ai) · [Contributing](CONTRIBUTING.md)

</div>

---

## What is this?

This repository defines every service, message, and RPC for the AgentCrate platform using [Protocol Buffers](https://protobuf.dev/). Definitions are published to the [Buf Schema Registry (BSR)](https://buf.build/agentcrate/api) for cross-repo consumption.

## Consumers

| Repository | What it generates | How |
| --- | --- | --- |
| [`crate`](https://github.com/agentcrate/crate) (CLI) | Go client stubs | `buf generate buf.build/agentcrate/api` |
| [`cratehub`](https://cratehub.ai) (API server) | Go server stubs | `buf generate buf.build/agentcrate/api` |

## Structure

```text
proto/
  agentcrate/
    v1/                             # Public API (shared across all consumers)
      model_service.proto             ModelRegistryService RPCs + ModelEntry
      skill_service.proto             SkillRegistryService RPCs + SkillEntry
```

## Using the API

### From BSR (recommended)

Add the dependency to your `buf.yaml`:

```yaml
version: v2
deps:
  - buf.build/agentcrate/api
```

Then generate:

```bash
buf generate
```

### Local development

Clone and generate locally:

```bash
git clone https://github.com/agentcrate/api.git
cd api
buf lint
buf generate
```

## API Protocol

All services use [ConnectRPC](https://connectrpc.com/), which serves **gRPC**, **gRPC-Web**, and **Connect** protocols simultaneously over HTTP/2. This means:

- Go services use `connectrpc.com/connect`
- Browser clients use `@connectrpc/connect-web`
- CLI clients use `connectrpc.com/connect` (same as server)
- All clients share the same protobuf-generated types

## Versioning

- Package versions follow `agentcrate.v1`, `agentcrate.hub.v1` pattern
- Breaking changes are detected automatically via `buf breaking` in CI
- Non-breaking additions (new fields, new RPCs) are allowed in the same version
- Breaking changes require a new major version (`v2`)

## Contributing

We welcome contributions! Please see [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines.

## Security

If you discover a security vulnerability, please report it responsibly. See [SECURITY.md](SECURITY.md) for details.

## License

Licensed under the [Apache License, Version 2.0](LICENSE).

Copyright 2026 AgentCrate Contributors.
