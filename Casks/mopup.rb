cask "mopup" do
  version "1.1.0"
  sha256 "b9ce21acd99c82149544e9ce113cf13c4c7d7dbd5e8614f9e3fd926a1f12f9a8"

  url "https://github.com/RossNicholson/mop-up/releases/download/v#{version}/MopUp-#{version}.dmg"
  name "Mop Up"
  desc "Disk cleaner and app uninstaller"
  homepage "https://github.com/RossNicholson/mop-up"

  depends_on macos: :sonoma

  app "Mop Up.app"

  uninstall quit: "com.rossnicholson.MopUp"

  zap trash: [
    "~/Library/Caches/com.rossnicholson.MopUp",
    "~/Library/Preferences/com.rossnicholson.MopUp.plist",
    "~/Library/Saved Application State/com.rossnicholson.MopUp.savedState",
  ]
end
