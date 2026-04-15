cask "con-beta" do
  version "0.1.0-beta.14"

  on_arm do
    sha256 "6f4b9e6ded5a0d7a1aa75039c4f2f2ace2427bb2a866cec26baaa457d582beab"
    url "https://github.com/nowledge-co/con/releases/download/v#{version}/con-Beta-#{version}-macos-arm64.dmg"
  end

  on_intel do
    sha256 "2dcc5206182931dde4d89cdac649ceb02e5b88af072f3fcb1fb9a3b6504d2df5"
    url "https://github.com/nowledge-co/con/releases/download/v#{version}/con-Beta-#{version}-macos-x86_64.dmg"
  end

  name "con Beta"
  desc "GPU-accelerated terminal emulator with built-in AI agent"
  homepage "https://github.com/nowledge-co/con"

  livecheck do
    url "https://github.com/nowledge-co/con/releases?q=prerelease%3Atrue"
    regex(/v?(\d+(?:\.\d+)*-beta\.\d+)/i)
    strategy :page_match
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
