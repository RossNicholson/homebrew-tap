cask "reporadar" do
  version "1.1.1"
  sha256 "322cae5e6e27ef7aa174f84373a2514ec1891c6237e59da6abf29853c3c74e2f"

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
