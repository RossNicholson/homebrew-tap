cask "brewdock" do
  version "1.0.5"
  sha256 "c247c4afa60c84e6ee4f3b024f49e8cd63ec5cf70575d3e942b9de2a1d509762"

  url "https://github.com/RossNicholson/brewdock/releases/download/v#{version}/BrewDock-#{version}.dmg"
  name "BrewDock"
  desc "Native macOS menu bar app for Homebrew"
  homepage "https://github.com/RossNicholson/brewdock"

  depends_on macos: ">= :ventura"

  app "BrewDock.app"

  uninstall quit: "com.rossnicholson.BrewDock"

  zap trash: [
    "~/Library/Application Support/BrewDock",
    "~/Library/Preferences/com.rossnicholson.BrewDock.plist",
    "~/Library/Caches/com.rossnicholson.BrewDock",
  ]
end
