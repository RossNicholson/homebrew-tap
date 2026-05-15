cask "clawdbar" do
  version "1.0.4"
  sha256 "f1508f73b0dd6db762938fc07109b4986c879558e267a5b162a5e43f7d691ada"

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
