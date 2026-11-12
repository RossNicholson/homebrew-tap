cask "reporadar" do
  version "1.1.0"
  sha256 "13801c91b1ef4e40e9f5656442447bf45d5db168a1d4e04481d5ec04317b7dff"

  url "https://github.com/RossNicholson/reporadar/releases/download/v#{version}/RepoRadar-#{version}.dmg"
  name "RepoRadar"
  desc "Menu bar app showing local git repos with uncommitted or unpushed work"
  homepage "https://github.com/RossNicholson/reporadar"

  depends_on macos: :sonoma

  app "RepoRadar.app"

  uninstall quit: "com.rossnicholson.RepoRadar"

  zap trash: [
    "~/Library/Caches/com.rossnicholson.RepoRadar",
    "~/Library/HTTPStorages/com.rossnicholson.RepoRadar",
    "~/Library/Preferences/com.rossnicholson.RepoRadar.plist",
  ]
end
