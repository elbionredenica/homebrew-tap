cask "nametag" do
  version "0.1.1"
  sha256 "b2103f5d367d38f2e57e9ad4e3585003a07eae7d95af5b4f22c623aaa88c52d1"

  url "https://github.com/elbionredenica/nametag/releases/download/v#{version}/Nametag-#{version}.zip"
  name "Nametag"
  desc "Name your Mac desktops in Mission Control"
  homepage "https://github.com/elbionredenica/nametag"

  depends_on macos: :ventura

  app "Nametag.app"

  uninstall quit: "io.github.elbionredenica.nametag"

  zap trash: "~/Library/Preferences/io.github.elbionredenica.nametag.plist"
end
