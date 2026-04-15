cask "con-beta" do
  version "0.1.0-beta.19"

  on_arm do
    sha256 "c6e23cbf84749cca009a324210d6b8907370bd1442ed1be1d4f649d706cbf595"
    url "https://github.com/nowledge-co/con/releases/download/v#{version}/con-Beta-#{version}-macos-arm64.dmg"
  end

  on_intel do
    sha256 "7172d477ee5383979ada577762761a9e7403064703789cd6aaf403faf557511e"
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
