cask "localhost" do
  version "0.6.0"
  sha256 "9ec9c9e3c186fbe012113ed54c86fb969220dbe2a901af1da44e7766b7b0fb26"

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
