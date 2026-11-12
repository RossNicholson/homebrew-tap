cask "macping" do
  version "0.0.0"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

  url "https://github.com/RossNicholson/macping/releases/download/v#{version}/MacPing-#{version}.dmg"
  name "MacPing"
  desc "Ping many hosts at once, with port checks, traceroute and a menu bar view"
  homepage "https://github.com/RossNicholson/macping"

  depends_on macos: :sonoma

  app "MacPing.app"

  uninstall quit: "com.rossnicholson.MacPing"

  zap trash: [
    "~/Library/Application Support/MacPing",
    "~/Library/Caches/com.rossnicholson.MacPing",
    "~/Library/HTTPStorages/com.rossnicholson.MacPing",
    "~/Library/Logs/MacPing",
    "~/Library/Preferences/com.rossnicholson.MacPing.plist",
  ]
end
