cask "kestro" do
  arch arm: "-arm64"

  version "1.2.0"
  sha256 arm:   "b8145b70afbca3ea73b7e21dfc72cee2f34079c918226ea24839a861f9395232",
         intel: "b1bdd2bc66fe02c0daa7b462bfebfec7254608787b7357ec4760855efcec9ec7"

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
