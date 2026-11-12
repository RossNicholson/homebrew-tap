cask "keybar" do
  version "1.0.0"
  sha256 "483bb4f06d453b529bfbbeab16918aa955485893e75a2c76e1baf0d0177a7833"

  url "https://github.com/RossNicholson/keybar/releases/download/v#{version}/KeyBar-#{version}.dmg"
  name "KeyBar"
  desc "Menu bar app keeping API keys in the Keychain for Claude Code, via an MCP server"
  homepage "https://github.com/RossNicholson/keybar"

  depends_on macos: :sonoma

  app "KeyBar.app"
  # The MCP server Claude Code runs, also handy for `claude mcp add` by hand
  binary "#{appdir}/KeyBar.app/Contents/Helpers/keybar"

  uninstall quit: "com.rossnicholson.KeyBar"

  # Key values stay in the login keychain (items named "KeyBar: NAME"); use
  # Settings → Delete everything in the app first to remove them too
  zap trash: [
    "~/.keybar",
    "~/Library/Caches/com.rossnicholson.KeyBar",
    "~/Library/HTTPStorages/com.rossnicholson.KeyBar",
    "~/Library/Preferences/com.rossnicholson.KeyBar.plist",
  ]
end
