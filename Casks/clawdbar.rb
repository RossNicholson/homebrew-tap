cask "clawdbar" do
  version "1.3.3"
  sha256 "de91c8344dd227deb52e2180c1cfb5cf51c275674b4fc57247050e49082aba65"

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
