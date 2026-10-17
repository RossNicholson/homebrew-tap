cask "clawdbar" do
  version "1.2.0"
  sha256 "228752c77691e16930d9cfa5843e0638f7088e88a181bc1d689ba8866a2a4325"

  url "https://github.com/RossNicholson/clawdbar/releases/download/v#{version}/ClawdBar-#{version}.dmg"
  name "ClawdBar"
  desc "Menu bar app showing Claude Code usage limits at a glance"
  homepage "https://github.com/RossNicholson/clawdbar"

  depends_on macos: :ventura

  app "ClawdBar.app"

  uninstall quit: "com.rossnicholson.ClawdBar"

  zap trash: [
    "~/Library/Application Support/ClawdBar",
    "~/Library/Caches/com.rossnicholson.ClawdBar",
    "~/Library/Preferences/com.rossnicholson.ClawdBar.plist",
  ]
end
