cask "con-beta" do
  version "0.1.0-beta.153"

  on_arm do
    sha256 "f92e6134e719e111f03c8491206af3262bacabac401ff806b800b26aab793182"
    url "https://github.com/nowledge-co/con-terminal/releases/download/v#{version}/con-Beta-#{version}-macos-arm64.dmg"
  end

  on_intel do
    sha256 "08ac047e6bcbe0b818383f4a213e57243ab8c1b2b670111976688ea3bcf4f3b7"
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
