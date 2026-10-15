cask "clawdbar" do
  version "1.1.2"
  sha256 "14c0c4d58d56ca01c7efdf7aa716ec39d216f221146503064fc6fc4118beee7d"

  url "https://github.com/RossNicholson/clawdbar/releases/download/v#{version}/ClawdBar-#{version}.dmg"
  name "ClawdBar"
  desc "Menu bar app showing Claude Code usage limits at a glance"
  homepage "https://github.com/RossNicholson/clawdbar"

  depends_on macos: :ventura

  app "ClawdBar.app"

  uninstall quit: "com.rossnicholson.ClawdBar"

  zap trash: [
    "~/Library/Caches/com.rossnicholson.ClawdBar",
    "~/Library/Preferences/com.rossnicholson.ClawdBar.plist",
  ]
end
