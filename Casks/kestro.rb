cask "kestro" do
  arch arm: "-arm64"

  version "0.4.0"
  sha256 arm:   "1a1525a7a08f043d2206d9748926321880d617a892db97f1067bd4a4fb29fabd",
         intel: "42da92f7d70845484ff8e2244beab327793542fc4b89b6ff3a057f34c509b6b3"

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
