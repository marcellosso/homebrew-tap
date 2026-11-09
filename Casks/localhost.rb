cask "localhost" do
  version "0.5.2"
  sha256 "c22a2be0ae03017d5ddf6e0875693e4570c9e25643048713a6e71b961fdd7bd4"

  url "https://github.com/marcellosso/localhost/releases/download/v#{version}/localhost-#{version}.dmg"
  name "localhost"
  desc "Start, stop and watch the dev servers of every local project"
  homepage "https://www.getlocalhost.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sequoia

  app "localhost.app"
  binary "#{appdir}/localhost.app/Contents/Helpers/localhost"

  zap trash: [
    "~/Library/Application Support/localhost",
    "~/Library/Caches/io.github.marcellosso.localhost",
    "~/Library/HTTPStorages/io.github.marcellosso.localhost",
    "~/Library/Preferences/io.github.marcellosso.localhost.plist",
    "~/Library/Saved Application State/io.github.marcellosso.localhost.savedState",
  ]
end
