cask "vancetope-desktop" do
  arch arm: "arm64", intel: "x64"

  # version + sha256 are rewritten on every `wb release publish` — do not hand-edit.
  version "0.1.0"
  sha256 arm:   "0000000000000000000000000000000000000000000000000000000000000000",
         intel: "0000000000000000000000000000000000000000000000000000000000000000"

  url "https://github.com/mhus/vance/releases/download/v#{version}/Vancetope-#{version}-#{arch}.dmg"
  name "Vancetope"
  desc "Desktop client for the Vancetope AI workbench"
  homepage "https://github.com/mhus/vance"

  depends_on macos: ">= :big_sur"

  app "Vancetope.app"

  zap trash: [
    "~/Library/Application Support/Vancetope",
    "~/Library/Preferences/de.mhus.vance.facelift.desktop.plist",
    "~/Library/Saved Application State/de.mhus.vance.facelift.desktop.savedState",
  ]
end
