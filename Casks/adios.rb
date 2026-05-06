cask "adios" do
  version "0.2.9"
  sha256 "305b63e786016efd8ce17a2d498c84b89fd9bdcb7227aa544b26147392a13d43"

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
