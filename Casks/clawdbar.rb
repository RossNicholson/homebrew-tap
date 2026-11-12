cask "clawdbar" do
  version "1.3.5"
  sha256 "8b8f60e527321c26dbc1e531d3efbe3d9453c4528e144c763235b996f1c0af91"

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
