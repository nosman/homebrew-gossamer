cask "gossamer" do
  version "1.0.9"

  on_arm do
    sha256 "24c220c7e0cd866d810394b44e99e52520545331659a95d90a9bcd6c7f96ac6b"
    url "https://github.com/nosman/gossamer/releases/download/v#{version}/Gossamer-#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "9baa744b5fe9435ff569f1257a23cfbbe1652d4408b5356d7f938ae6fa829c96"
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
