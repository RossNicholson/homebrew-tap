cask "clawdbar" do
  version "1.0.3"
  sha256 "77b862e84ce7d9f229c5fe16359fa171a1246068648e07bab0bcc7a8f5b99318"

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
