# Homebrew Tap — OpenClaw

Install OpenClaw tools via Homebrew:

```bash
brew tap Sobranier/openclaw
brew install openclaw-cli
```

## Available Formulas

| Formula | Description |
|---------|-------------|
| `openclaw-cli` | CLI and health-watch daemon for OpenClaw AI gateway |
| `openclaw-doctor` | Alias for openclaw-cli (backward compat) |

## Usage after install

```bash
openclaw-cli watch -d      # Start background monitoring
openclaw-cli status        # Health check
openclaw-cli gateway restart
```

> Source: [Sobranier/openclaw-doctor](https://github.com/Sobranier/openclaw-doctor)
