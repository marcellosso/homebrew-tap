cask "localhost" do
  version "0.5.1"
  sha256 "7825790186f2e906556dd196da1fd710103491994e7ca3408de04f1336b4992d"

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
