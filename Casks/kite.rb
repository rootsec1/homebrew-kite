cask "kite" do
  version "0.1.4"
  sha256 "5bf5f277f54e3205b0b10b8a453588476ba2c2391e3b4ce068f8fcba99fcb7af"

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
