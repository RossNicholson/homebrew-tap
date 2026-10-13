cask "clawdbar" do
  version "1.0.7"
  sha256 "96b474da708644c7b1db0acef6b9419c363fad0b073cf02fd00592749cc4bb68"

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
