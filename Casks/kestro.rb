cask "kestro" do
  arch arm: "-arm64"

  version "0.6.0"
  sha256 arm:   "64318cef7bf372b61fe43f11395ba6e5d0efabd17dc324ef5270f9ba27cdf0ca",
         intel: "98cca32caf07e1432216697e75bfc6c4e653e6a797f7337ea465a7b7c08d33b3"

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
