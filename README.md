# Homebrew Tap for nfrx

This repository provides a Homebrew tap for **nfrx**, an inference broker and worker ecosystem for exposing private AI infrastructure through a public, OpenAI-compatible API.

The tap contains formulae for installing the **nfrx broker** and its **workers** on macOS and Linux using Homebrew.

---

## Available Formulae

| Formula        | Description |
|---------------|-------------|
| nfrx          | Inference broker server |
| nfrx-llm      | LLM worker (bridges local LLM runtimes to the broker) |
| nfrx-mcp      | MCP worker (Model Context Protocol relay) |

Each formula installs one binary into your Homebrew prefix.

---

## Installation

### 1. Add the tap

brew tap gaspardpetit/nfrx

### 2. Install a component

Broker:
brew install nfrx

LLM worker:
brew install nfrx-llm

MCP worker:
brew install nfrx-mcp

---

## Usage

After installation, binaries are available in your PATH.

Examples:

nfrx --version
nfrx-llm --version
nfrx-mcp --version

Runtime configuration (API keys, server URLs, etc.) is handled via environment variables.
Refer to the main project documentation for deployment and configuration details.

---

## Platforms

Supported platforms:

- macOS (arm64, amd64)
- Linux (arm64, amd64)

Homebrew automatically selects the correct binary for your platform.

---

## Notes

- This tap installs prebuilt binaries published on GitHub Releases.
- Linux .deb packages are not used by Homebrew.
- Formulae in this tap are intended for developer and infrastructure use.
- At this time, the tap is separate from homebrew-core.

---

## Project Repository

The main project lives here:

https://github.com/gaspardpetit/nfrx

That repository contains architecture documentation, deployment examples, and worker configuration details.

---

## License

All software installed via this tap is licensed under the MIT License, unless otherwise noted.
