cask "brewdock" do
  version "1.3.3"
  sha256 "7a9297b28813d70a18ef973ea8c9b6882969ab5eb718eff83724d7f36dfe9aa5"

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
