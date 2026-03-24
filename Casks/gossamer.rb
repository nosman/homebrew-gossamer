cask "gossamer" do
  version "1.0.11"

  on_arm do
    sha256 "a61bd6e9c9d576b3d83d61367729a97544fff883609e47d273e3ac5c0c43e539"
    url "https://github.com/nosman/gossamer/releases/download/v#{version}/Gossamer-#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "e943d94d9f07cb99095ea15cf884e8fbd96525ffb286876a32962e6853480e9c"
    url "https://github.com/nosman/gossamer/releases/download/v#{version}/Gossamer-#{version}.dmg"
  end

  name "Gossamer"
  desc "Browse and search your Claude Code sessions locally"
  homepage "https://github.com/nosman/gossamer"

  app "Gossamer.app"

  caveats <<~EOS
    Gossamer is not code-signed. If macOS says the app is damaged, run:
      xattr -cr /Applications/Gossamer.app
    Then try opening it again.
  EOS
end
