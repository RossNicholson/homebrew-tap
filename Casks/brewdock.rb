cask "brewdock" do
  version "1.6.1"
  sha256 "1130c41fea0daeccd312509ebececd4b161ff2121e05398fe922c1d24b247569"

  url "https://github.com/RossNicholson/brewdock/releases/download/v#{version}/BrewDock-#{version}.dmg"
  name "BrewDock"
  desc "Menu bar app for Homebrew"
  homepage "https://github.com/RossNicholson/brewdock"

  depends_on macos: :ventura

  app "BrewDock.app"

  uninstall quit: "com.rossnicholson.BrewDock"

  zap trash: [
    "~/Library/Application Support/BrewDock",
    "~/Library/Caches/com.rossnicholson.BrewDock",
    "~/Library/Preferences/com.rossnicholson.BrewDock.plist",
  ]
end
