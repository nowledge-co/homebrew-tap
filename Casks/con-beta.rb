cask "con-beta" do
  version "0.1.0-beta.93"

  on_arm do
    sha256 "0780b9f31f00e1d31445ec9c30adfbbbdaf1789b594d9d15b7e094bb25644ce9"
    url "https://github.com/nowledge-co/con-terminal/releases/download/v#{version}/con-Beta-#{version}-macos-arm64.dmg"
  end

  on_intel do
    sha256 "2d7cf95ba3ba27c7dde29d878b5a9c634fe4e186472037eb57e4a966e0ef95df"
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
  binary "#{appdir}/con Beta.app/Contents/MacOS/con-cli", target: "con-cli"

  zap trash: [
    "~/.config/con",
    "~/Library/Caches/co.nowledge.con.beta",
    "~/Library/Preferences/co.nowledge.con.beta.plist",
  ]
end
