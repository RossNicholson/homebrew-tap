cask "brewdock" do
  version "1.3.2"
  sha256 "f6c02b4c63957e203733351ac8f48c4325c7049c1d63482cb8f59fa49aba5fcd"

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
