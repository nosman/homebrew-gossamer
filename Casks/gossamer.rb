cask "gossamer" do
  version "1.0.10"

  on_arm do
    sha256 "1bc5cc9014e87f2e4735c44018fddbfbe767d640554b4619b407db1bfd8fdf2f"
    url "https://github.com/nosman/gossamer/releases/download/v#{version}/Gossamer-#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "3b36ebb1cf2866cf0579dd37d7075a607108038e46829798d2249b4532a38888"
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
