cask "con-beta" do
  version "0.1.0-beta.22"

  on_arm do
    sha256 "1d7684278ea258aa8acde22711aaeb2bf7c821122d3195fb2acd73c77a01d291"
    url "https://github.com/nowledge-co/con/releases/download/v#{version}/con-Beta-#{version}-macos-arm64.dmg"
  end

  on_intel do
    sha256 "3b31ffd01d1c6b2376c47e2bce687770a195cde574ed60b8c1dab0afd1bd5983"
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
