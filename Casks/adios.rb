cask "adios" do
  version "0.2.6"
  sha256 "8bd6ddba7b6d930c40e49caa73424fe2762ca8b48a0cdde83815d06d7e875509"

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
