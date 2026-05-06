cask "adios" do
  version "0.2.4"
  sha256 "67db39da9d720836f183304c45a381722848dc3c76ffb95fd97a9336dac61a7e"

  url "https://github.com/RossNicholson/adios/releases/download/v#{version}/Adios-#{version}.dmg"
  name "Adios"
  desc "Open-source ad blocker for Safari on macOS"
  homepage "https://github.com/RossNicholson/adios"

  depends_on macos: ">= :sequoia"

  app "Adios.app"

  postflight do
    system_command "/usr/bin/open", args: ["-a", "Adios"]
  end

  zap trash: [
    "~/Library/Containers/dev.rossnicholson.Adios",
    "~/Library/Containers/dev.rossnicholson.Adios.Extension",
    "~/Library/Group Containers/dev.rossnicholson.Adios",
  ]
end
