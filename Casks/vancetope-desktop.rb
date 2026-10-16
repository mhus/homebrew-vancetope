cask "vancetope-desktop" do
  arch arm: "arm64", intel: "x64"

  # version + sha256 are rewritten on every `wb release publish` — do not hand-edit.
  version "0.6.0"
  sha256 arm:   "f062d5b0f4e08e20a31df9538dba5e5bc65628619b966e7c3d424d72906342da",
         intel: "4ea7acaf6397dbbf94f344a250efb576ad2e2e4989ff5232f5fe539a83b7ebe9"

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
