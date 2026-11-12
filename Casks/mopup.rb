cask "mopup" do
  version "1.2.2"
  sha256 "5a28ffe9cb35d72b8d204a97ebefbd36f9716f54743e7230672eb85719510d3c"

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
