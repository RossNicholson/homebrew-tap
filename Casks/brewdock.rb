cask "brewdock" do
  version "1.1.0"
  sha256 "3cdd5194d903d72e3bf45fe12b6966b695274d343a9b48ca7142a96b1c277286"

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
