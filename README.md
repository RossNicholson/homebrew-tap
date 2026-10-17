# Ross Nicholson's Homebrew tap

Mac apps by [Ross Nicholson](https://rossnicholson.dev), installable with [Homebrew](https://brew.sh). Install any one of them, or all three.

| App | What it does | Needs |
|---|---|---|
| **[BrewDock](https://github.com/RossNicholson/brewdock)** | Homebrew in your menu bar: browse, install, update and tidy up your apps and tools without the Terminal. | macOS 13 |
| **[ClawdBar](https://github.com/RossNicholson/clawdbar)** | Your Claude Code 5-hour and 7-day usage limits, always in view in the menu bar. | macOS 13 |
| **[Mop Up](https://github.com/RossNicholson/mop-up)** | Clean, uninstall and tune up your Mac: a friendly window on the open-source Mole cleaner. | macOS 14 |

## Install

Homebrew 7 asks you to trust casks from other taps once, then installs them by their full name. On older Homebrew, skip the `brew trust` line.

```bash
# BrewDock
brew trust --cask rossnicholson/tap/brewdock
brew install --cask rossnicholson/tap/brewdock

# ClawdBar
brew trust --cask rossnicholson/tap/clawdbar
brew install --cask rossnicholson/tap/clawdbar

# Mop Up
brew trust --cask rossnicholson/tap/mopup
brew install --cask rossnicholson/tap/mopup
```

Every app is signed and notarized by Apple.

## Updating

Each app updates itself: open its **Settings → Check for updates**. Or from the Terminal:

```bash
brew update
brew upgrade --cask rossnicholson/tap/brewdock rossnicholson/tap/clawdbar rossnicholson/tap/mopup
```

(List only the apps you have.)

## Uninstalling

```bash
brew uninstall --cask rossnicholson/tap/mopup           # the app
brew uninstall --zap --cask rossnicholson/tap/mopup     # the app and its settings
```

## How this tap is maintained

Each app's release pipeline (`make release VERSION=x.y.z`) builds, signs and notarizes the app, publishes a GitHub release, then updates the version and checksum of its cask here automatically.
