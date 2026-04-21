cask "con-beta" do
  version "0.1.0-beta.31"

  on_arm do
    sha256 "7a5a8146fc6cfebda262477acf4eca516710f9ecb3eca328ae036950d11863b0"
    url "https://github.com/nowledge-co/con-terminal/releases/download/v#{version}/con-Beta-#{version}-macos-arm64.dmg"
  end

  on_intel do
    sha256 "274c4e521bec89f198c7a305b05e79ebd73322fa540fed65621f6359d6fc4bd4"
    url "https://github.com/nowledge-co/con-terminal/releases/download/v#{version}/con-Beta-#{version}-macos-x86_64.dmg"
  end

  name "con Beta"
  desc "GPU-accelerated terminal emulator with built-in AI agent"
  homepage "https://github.com/nowledge-co/con-terminal"

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
