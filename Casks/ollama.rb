cask "ollama" do
  version "0.5.3"
  sha256 "ec7c02a01e29315d21059fd468eea8b9bf02358c6a43adb109e92ca1a6a1b275"

  url "https://github.com/ollama/ollama/releases/download/v#{version}/Ollama-darwin.zip",
      verified: "github.com/ollama/ollama/"
  name "Ollama"
  desc "Get up and running with large language models locally"
  homepage "https://ollama.ai/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  conflicts_with formula: "ollama"
  depends_on macos: ">= :high_sierra"

  app "Ollama.app"
  binary "#{appdir}/Ollama.app/Contents/Resources/ollama"

  zap trash: [
    "$HOME/.ollama",
    "$HOME/Library/Application Support/Ollama",
  ]
end
