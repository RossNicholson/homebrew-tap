# Ross Nicholson's Homebrew tap

Mac apps by [Ross Nicholson](https://rossnicholson.dev), installable with [Homebrew](https://brew.sh).

| App | What it does | Install |
|---|---|---|
| **[BrewDock](https://github.com/RossNicholson/brewdock)** | Homebrew in your menu bar: browse, install, update and tidy up your apps and tools without the Terminal. | `brew install --cask brewdock` |
| **[ClawdBar](https://github.com/RossNicholson/clawdbar)** | Your Claude Code 5-hour and 7-day usage limits, always in view in the menu bar. | `brew install --cask clawdbar` |

## Install

```bash
brew tap RossNicholson/tap

# Homebrew 7 asks you to trust casks from other taps first (skip on older versions)
brew trust --cask rossnicholson/tap/brewdock
brew trust --cask rossnicholson/tap/clawdbar

brew install --cask brewdock
brew install --cask clawdbar
```

Both apps are signed and notarized, need macOS 13 or later, and can update themselves from their Settings.

## Updating

```bash
brew update
brew upgrade --cask brewdock clawdbar
```

## How this tap is maintained

Each app's release pipeline (`make release VERSION=x.y.z`) builds, signs and notarizes the app, publishes a GitHub release, then bumps the version and checksum of its cask here automatically.
