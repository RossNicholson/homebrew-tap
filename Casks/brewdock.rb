cask "brewdock" do
  version "1.0.1"
  sha256 "7078eadf0c755383c9dc2fb13853da130b63ad8137a4d28eb14224e57a32db02"

  url "https://github.com/RossNicholson/brewdock/releases/download/v#{version}/BrewDock-#{version}.dmg"
  name "BrewDock"
  desc "Native macOS menu bar app for Homebrew"
  homepage "https://github.com/RossNicholson/brewdock"

  depends_on macos: ">= :ventura"

  app "BrewDock.app"

  zap trash: [
    "~/Library/Application Support/BrewDock",
    "~/Library/Preferences/com.rossnicholson.BrewDock.plist",
    "~/Library/Caches/com.rossnicholson.BrewDock",
  ]
end
