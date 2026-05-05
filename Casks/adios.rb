cask "adios" do
  version "0.1.0"
  sha256 "b1f692890e222bf48ce289c337b8a04e6a662a3949e522bb047d8bef82245a5e"

  url "https://github.com/RossNicholson/adios/releases/download/v#{version}/Adios-#{version}.dmg"
  name "Adios"
  desc "Open-source ad blocker for Safari on macOS"
  homepage "https://github.com/RossNicholson/adios"

  depends_on macos: ">= :sequoia"

  app "Adios.app"

  postflight do
    puts "Adios installed successfully!"
    puts "Open Adios and enable the extension in Safari Settings → Extensions."
  end

  zap trash: [
    "~/Library/Containers/dev.rossnicholson.Adios",
    "~/Library/Containers/dev.rossnicholson.Adios.Extension",
    "~/Library/Group Containers/dev.rossnicholson.Adios",
  ]
end
