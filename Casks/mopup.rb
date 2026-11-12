cask "mopup" do
  version "1.2.1"
  sha256 "a29ad5c8e4cf2cbe9809e2b21bb57a9dd4fe3315307d46fe4de74085bbb2aa2e"

  url "https://github.com/RossNicholson/mop-up/releases/download/v#{version}/MopUp-#{version}.dmg"
  name "Mop Up"
  desc "Disk cleaner and app uninstaller"
  homepage "https://github.com/RossNicholson/mop-up"

  depends_on macos: :sonoma

  app "Mop Up.app"

  uninstall quit: "com.rossnicholson.MopUp"

  zap trash: [
    "~/Library/Application Support/Mop Up",
    "~/Library/Caches/com.rossnicholson.MopUp",
    "~/Library/Preferences/com.rossnicholson.MopUp.plist",
    "~/Library/Saved Application State/com.rossnicholson.MopUp.savedState",
  ]
end
