cask "localhost" do
  version "0.5.4"
  sha256 "e9c5c5a4ffa217575a87b41d1f20f1c600536ab1705dce06ad51ac4e2600b225"

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
