cask "kestro" do
  arch arm: "-arm64"

  version "0.4.2"
  sha256 arm:   "6e20db95c8f461465db7dcfc0460fdceabe87841de0a68fbefef83c50114df49",
         intel: "f17a2e9dd1e6d58c22851b03c8072ae5647fdf290c0a3b17531a394c99ceae20"

  url "https://storage.googleapis.com/kestro-updates/latest/Kestro-#{version}#{arch}.dmg",
      verified: "storage.googleapis.com/kestro-updates/"
  name "Kestro"
  desc "Developer toolbox that lives in the menu bar"
  homepage "https://kestro.fr/"

  livecheck do
    url "https://storage.googleapis.com/kestro-updates/latest/kestro-releases.json"
    strategy :json do |json|
      json["derniere"]
    end
  end

  auto_updates true
  depends_on macos: :big_sur

  app "Kestro.app"

  uninstall quit: "fr.kestro.app"

  zap trash: [
    "~/Library/Application Support/Kestro",
    "~/Library/Caches/fr.kestro.app",
    "~/Library/Caches/kestro-updater",
    "~/Library/HTTPStorages/fr.kestro.app",
    "~/Library/Logs/Kestro",
    "~/Library/Preferences/fr.kestro.app.plist",
    "~/Library/Saved Application State/fr.kestro.app.savedState",
  ]
end
