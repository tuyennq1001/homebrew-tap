cask "gox" do
  version "1.0.11"
  sha256 "244f0e058403b6f91d448174cf9ff7fc03dd404ed5ca551fc8763c38d462eee1"

  url "https://github.com/tuyennq1001/gox/releases/download/v#{version}/Gox.dmg",
      verified: "github.com/tuyennq1001/gox/"
  name "Gox"
  desc "Native Vietnamese & Japanese dual input engine for macOS (JIS keyboard ready)"
  homepage "https://tuyennq1001.github.io/gox/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Gox.app"

  zap trash: [
    "~/Library/Application Support/Gox",
    "~/Library/Application Support/com.tuyennq1001.gox",
    "~/Library/Caches/com.tuyennq1001.gox",
    "~/Library/Preferences/com.tuyennq1001.gox.plist",
    "~/Library/Saved Application State/com.tuyennq1001.gox.savedState",
  ]
end
