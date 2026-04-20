cask "con-beta" do
  version "0.1.0-beta.23"

  on_arm do
    sha256 "91a8e6e9a58211affc638892335c7a2bb056d068924b2fbdaba6f4387de86c7a"
    url "https://github.com/nowledge-co/con/releases/download/v#{version}/con-Beta-#{version}-macos-arm64.dmg"
  end

  on_intel do
    sha256 "9c4ccf3432a9c84168ec24b51130a6b8a2148d8762e187a5438274935e555ba9"
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
