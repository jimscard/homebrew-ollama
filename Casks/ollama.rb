cask "ollama" do
  version "0.5.13"
  sha256 "ea4e532b4ef3c970073604c783381bb3d92c78d5ec318834111b807280178fbd"

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
