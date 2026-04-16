cask "con-beta" do
  version "0.1.0-beta.21"

  on_arm do
    sha256 "2abd1ecd2367625a022ea977a465a94bcf4194535683de99e4c598b62095dbf6"
    url "https://github.com/nowledge-co/con/releases/download/v#{version}/con-Beta-#{version}-macos-arm64.dmg"
  end

  on_intel do
    sha256 "982a7799971a44641f5dfae03a21c5473a9a5f18d9d2fd0bfd91bfa7ecefbb11"
    url "https://github.com/nowledge-co/con/releases/download/v#{version}/con-Beta-#{version}-macos-x86_64.dmg"
  end

  name "con Beta"
  desc "GPU-accelerated terminal emulator with built-in AI agent"
  homepage "https://github.com/nowledge-co/con"

  livecheck do
    url :url
    strategy :github_latest
    regex(/v?(\d+(?:\.\d+)*(?:-beta\.\d+)?)/i)
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "con Beta.app"

  zap trash: [
    "~/.config/con",
    "~/Library/Caches/co.nowledge.con.beta",
    "~/Library/Preferences/co.nowledge.con.beta.plist",
  ]
end
