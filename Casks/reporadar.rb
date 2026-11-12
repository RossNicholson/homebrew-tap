cask "reporadar" do
  version "1.0.0"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

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
