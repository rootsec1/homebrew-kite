cask "kite" do
  version "0.1.1"
  sha256 "4629bcb88dfd1bfdd9f36d5056dd65746832c92cc45c399c7702e1f86bfff56e"

  url "https://github.com/rootsec1/kite/releases/download/v#{version}/Kite_#{version}_universal.dmg"
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
