# Makefile for AgentCrate API definitions

.PHONY: lint format breaking generate clean help

## lint: Lint all proto files
lint:
	@buf lint

## format: Format all proto files
format:
	@buf format -w

## format-check: Check proto formatting (CI mode)
format-check:
	@buf format --diff --exit-code

## breaking: Check for breaking changes against main
breaking:
	@buf breaking --against .git#branch=main

## generate: Generate Go stubs locally (for development)
generate:
	@buf generate

## clean: Remove generated files
clean:
	@rm -rf gen/

## help: Show this help message
help:
	@echo "Available targets:"
	@grep -E '^## ' Makefile | sed 's/## /  /'
