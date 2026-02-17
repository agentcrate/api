# Contributing to AgentCrate API

Thank you for your interest in contributing to the AgentCrate API definitions!

## Getting Started

### Prerequisites

- [Buf CLI](https://buf.build/docs/installation) v1.47+
- A text editor with protobuf support (VS Code + vscode-proto3 recommended)

### Setup

```bash
git clone https://github.com/agentcrate/api.git
cd api
buf lint
```

## Making Changes

### Adding a new RPC

1. Add the RPC definition to the appropriate `*_service.proto` file
2. Add request/response messages in the same file
3. Run `buf lint` to validate
4. Run `buf breaking --against .git#branch=main` to check for breaking changes
5. Submit a PR

### Adding a new message type

- **Shared types** (used by multiple services): add to `agentcrate/v1/common.proto` or `agentcrate/v1/agent.proto`
- **Service-specific types**: add to the service's proto file

### Adding a new service

1. Create a new `*_service.proto` in the appropriate package:
   - `agentcrate/v1/` for public APIs
   - `agentcrate/hub/v1/` for CrateHub-specific APIs
2. Follow the existing naming conventions
3. Add documentation comments to all RPCs and messages

## Conventions

### Naming

| Element | Convention | Example |
| --------- | ----------- | --------- |
| Files | `snake_case.proto` | `registry_service.proto` |
| Services | `PascalCase` + `Service` suffix | `RegistryService` |
| RPCs | `PascalCase` verb-noun | `ListModels`, `GetAgent` |
| Messages | `PascalCase` | `ListModelsRequest` |
| Fields | `snake_case` | `api_base`, `trust_level` |
| Enums | `SCREAMING_SNAKE_CASE` with type prefix | `TRUST_LEVEL_VETTED` |

### Documentation

- Every service must have a doc comment explaining its purpose and auth requirements
- Every RPC must have a doc comment explaining what it does
- Every message field should have a doc comment unless self-evident

### Versioning

- Package versions: `agentcrate.v1`, `agentcrate.hub.v1`
- **Non-breaking changes** (new fields, new RPCs, new services): OK in current version
- **Breaking changes** (removing fields, renaming RPCs, changing types): require new major version

### Request/Response Pattern

- Every RPC has its own `*Request` and `*Response` messages (no sharing)
- List RPCs use `PageRequest`/`PageResponse` from `common.proto`
- Empty requests/responses still get their own named message type

## Pull Request Process

1. Ensure `buf lint` passes
2. Ensure `buf breaking --against .git#branch=main` passes (or document why a break is necessary)
3. Update the CHANGELOG.md
4. Request review from a maintainer

## Code of Conduct

Please read our [Code of Conduct](CODE_OF_CONDUCT.md) before contributing.

## License

By contributing, you agree that your contributions will be licensed under the Apache License 2.0.
