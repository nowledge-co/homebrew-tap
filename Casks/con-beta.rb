cask "con-beta" do
  version "0.1.0-beta.103"

  on_arm do
    sha256 "59726ca8c77647f78723bd76d2e240ed90c4920325b842533400fff95484a61c"
    url "https://github.com/nowledge-co/con-terminal/releases/download/v#{version}/con-Beta-#{version}-macos-arm64.dmg"
  end

  on_intel do
    sha256 "ace90d92209b89daa93140e1bea10c40ccf359ddcc058fc58491b7642f05485b"
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
