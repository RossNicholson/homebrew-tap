cask "mopup" do
  version "1.2.4"
  sha256 "2b24b0c3561408e1c6897e348a49881df44bb4b1605baadaa30e06957658c33f"

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
