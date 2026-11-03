cask "con-beta" do
  version "0.1.0-beta.170"

  on_arm do
    sha256 "ef152087ca3f70c95a7adabd82a51ec30ed41edb7a3f0fd1497313bc315c178e"
    url "https://github.com/nowledge-co/con-terminal/releases/download/v#{version}/con-Beta-#{version}-macos-arm64.dmg"
  end

  on_intel do
    sha256 "fdc6195b093f9c684c16e4b0f622ebe53119d6a4a13e3a8822eac41aa8ca3702"
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
  depends_on :macos

  app "con Beta.app"
  binary "#{appdir}/con Beta.app/Contents/MacOS/con-cli", target: "con-cli"

  zap trash: [
    "~/.config/con",
    "~/Library/Caches/co.nowledge.con.beta",
    "~/Library/Preferences/co.nowledge.con.beta.plist",
  ]
end
