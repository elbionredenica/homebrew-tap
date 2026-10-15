cask "nametag" do
  version "0.1.0"
  sha256 "e9a402486c4b3e11ccbb4fc7b07cbe9cffa84373937bdbfdd91c1522662a30c4"

  url "https://github.com/elbionredenica/nametag/releases/download/v#{version}/Nametag-#{version}.zip"
  name "Nametag"
  desc "Name your Mac desktops in Mission Control"
  homepage "https://github.com/elbionredenica/nametag"

  depends_on macos: ">= :ventura"

  app "Nametag.app"

  uninstall quit: "io.github.elbionredenica.nametag"

  zap trash: "~/Library/Preferences/io.github.elbionredenica.nametag.plist"
end
