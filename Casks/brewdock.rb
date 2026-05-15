cask "brewdock" do
  version "1.0.4"
  sha256 "24bb96add30be1fe213962d0668021791f4ae3f2cef05e21d82e888fe988ccf9"

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
