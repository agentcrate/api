# Security Policy

## Supported Versions

| Version | Supported |
|---------|-----------|
| latest  | Yes       |

## Reporting a Vulnerability

We take security seriously. If you discover a security vulnerability, please report it responsibly.

### How to Report

**Do NOT open a public GitHub issue for security vulnerabilities.**

Instead, please email: **security@agentcrate.ai**

Include as much of the following information as possible:

- Type of vulnerability
- Full path to the affected source file(s)
- Step-by-step instructions to reproduce
- Impact assessment
- Suggested fix, if any

### Response Timeline

- **Acknowledgment**: Within 48 hours
- **Assessment**: Within 5 business days
- **Fix timeline**: Depends on severity
  - Critical: Patch within 72 hours
  - High: Patch within 1 week
  - Medium/Low: Next scheduled release

### Scope

The following are in scope:

- Protobuf service and message definitions
- API design vulnerabilities (e.g., excessive data exposure, broken access control patterns)
- Supply chain concerns (compromised dependencies)

The following are out of scope for this repository:

- Server-side implementations (report to the respective repo)
- Third-party dependencies (report upstream)

## Security Design Principles

- **Defense in depth**: API contracts encode authorization expectations via comments
- **Minimal surface area**: Each service exposes only necessary RPCs
- **Breaking change detection**: `buf breaking` in CI prevents accidental field removals
