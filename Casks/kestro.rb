cask "kestro" do
  arch arm: "-arm64"

  version "1.0.0"
  sha256 arm:   "f93798af7888ebe08384a22c07daf07dc1eba84f71155d480ac00b486273713d",
         intel: "dbc4157f71d5eb8a3639b02ced02df7ce5863b6710de74667bb94b1ad93f4397"

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
