## Description

Brief description of the changes in this PR.

Fixes #(issue number)

## Type of Change

- [ ] New RPC or service
- [ ] New message type or field
- [ ] Breaking change (field removal, type change, RPC rename)
- [ ] Documentation update
- [ ] CI/build changes

## Changes Made

- Change 1
- Change 2

## Validation

- [ ] `buf lint` passes
- [ ] `buf format --diff --exit-code` passes
- [ ] `buf breaking --against .git#branch=main` passes (or breaking change is documented)
- [ ] All new RPCs and messages have doc comments

## Checklist

- [ ] My changes follow the project's [naming conventions](CONTRIBUTING.md#naming)
- [ ] I have added doc comments to all new services, RPCs, and messages
- [ ] I have updated the README.md (if adding a new service)
- [ ] My changes don't introduce breaking changes (or I have documented why)
- [ ] I have rebased on latest `main`

## Consumer Impact

Which downstream repos are affected by this change?

- [ ] `crate` (CLI)
- [ ] `cratehub` (API server)
- [ ] `cratehub-web` (frontend)
- [ ] None (internal/documentation only)
