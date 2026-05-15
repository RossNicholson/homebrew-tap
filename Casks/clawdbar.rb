cask "clawdbar" do
  version "1.0.2"
  sha256 "6af8f4aabc2a57d71251e2cc271e8cf470127998c74707096b471d3f7bbe0c62"

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
