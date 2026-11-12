cask "reporadar" do
  version "1.1.2"
  sha256 "88f12a4c11716ea61fa5b4ea81ce627d3a49cf82b09708dca29d4f7a287ca419"

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
