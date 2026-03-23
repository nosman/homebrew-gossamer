cask "gossamer" do
  version "1.0.7"

  on_arm do
    sha256 "750375e82ac7f04e3ab2500357db196971021033b38cea36ce426a88ddbb8e21"
    url "https://github.com/nosman/gossamer/releases/download/v#{version}/Gossamer-1.0.0-arm64.dmg"
  end

  on_intel do
    sha256 "4bda47964f536f17d4d234d9d262b667fb75ac59d710e7ce887068beef8e8c9e"
    url "https://github.com/nosman/gossamer/releases/download/v#{version}/Gossamer-1.0.0.dmg"
  end

  name "Gossamer"
  desc "Browse and search your Claude Code sessions locally"
  homepage "https://github.com/nosman/gossamer"

  app "Gossamer.app"

  postflight do
    puts "Gossamer is ready. Open it from your Applications folder."
  end
end
