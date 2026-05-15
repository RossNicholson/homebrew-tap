cask "clawdbar" do
  version "1.0.4"
  sha256 "30161a0f90b3431624d5f91d8ed386636ddaf4f32233ea4dd88d428053b20bc7"

  url "https://github.com/RossNicholson/clawdbar/releases/download/v#{version}/ClawdBar-#{version}.dmg"
  name "ClawdBar"
  desc "macOS menu bar app showing Claude Code usage limits at a glance"
  homepage "https://github.com/RossNicholson/clawdbar"

  depends_on macos: ">= :ventura"

  app "ClawdBar.app"

  uninstall quit: "com.rossnicholson.ClawdBar"

  zap trash: [
    "~/Library/Preferences/com.rossnicholson.ClawdBar.plist",
    "~/Library/Caches/com.rossnicholson.ClawdBar",
  ]
end
