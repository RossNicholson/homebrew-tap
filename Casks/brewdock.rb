cask "brewdock" do
  version "1.7.1"
  sha256 "acad63a8483058d0d1e679a9b13d9cf7fe0e6eeb595fd3ae86149daebadb2800"

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
