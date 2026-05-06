cask "adios" do
  version "0.2.5"
  sha256 "808f9be803f6b215aa53ace5728eb44d50639c70cb89a58211ceb9f9b318645d"

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
