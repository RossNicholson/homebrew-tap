cask "brewdock" do
  version "1.4.0"
  sha256 "d40ff9ea30756f8ff74cf413263c4d6f82a39c5334ae03964b3ec15573fd74ad"

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
