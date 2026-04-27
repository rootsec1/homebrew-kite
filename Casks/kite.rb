cask "kite" do
  version "0.1.0"
  sha256 "9a13dcd127211c900d8fbdc18c330a4b62ee93bce04526da65e6a2415f0ec0db"

  url "https://github.com/rootsec1/kite/releases/download/v0.1.0/Kite_0.1.0_universal.dmg"
  name "Kite"
  desc "Native Kubernetes cockpit"
  homepage "https://github.com/rootsec1/kite"

  depends_on macos: ">= :monterey"

  app "Kite.app"

  caveats <<~EOS
    Kite is unsigned and not notarized. macOS may block the first launch with
    an unidentified developer warning.

    To open Kite, right-click Kite.app and choose Open, or use System Settings
    > Privacy & Security > Open Anyway after the first blocked launch.
  EOS

  zap trash: [
    "~/Library/Application Support/io.github.rootsec1.kite",
    "~/Library/Caches/io.github.rootsec1.kite",
    "~/Library/Preferences/io.github.rootsec1.kite.plist",
    "~/Library/Saved Application State/io.github.rootsec1.kite.savedState",
    "~/Library/WebKit/io.github.rootsec1.kite",
  ]
end
