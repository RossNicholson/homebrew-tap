cask "reporadar" do
  version "1.1.3"
  sha256 "77a1a4b040b279a62332db7844f881c0d4ab73deec10d4fa1dff688096f82135"

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
