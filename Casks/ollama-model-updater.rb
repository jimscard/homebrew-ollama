cask "ollama-model-updater" do
  arch arm: "arm64", intel: "x86"

  version "0.1.8"
  sha256  arm:   "fa821869150a249e71931239aecab0e0fa95fb7f70f6cd667246aeefc63b4ec4",
          intel: "71c4dfc0c6fee4a3fb926e32891cb7af13f2832d89ea36a9bd5bab1701f1f190"

  url "https://github.com/technovangelist/ollamamodelupdater/releases/download/v#{version}/macos-#{arch}-ollamamodelupdate"
  name "Ollama Model Updater"
  desc "Updates models on the system if updated on ollama.com"
  homepage "https://github.com/technovangelist/ollamamodelupdater"

  livecheck do
    url :homepage
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  # The original maintainer uses ollamamodelupdate (no r)
  binary "macos-#{arch}-ollamamodelupdate", target: "ollamamodelupdate"
  # For consistency with the repository name, let's link in with the r as well.
  binary "macos-#{arch}-ollamamodelupdate", target: "ollamamodelupdater"
  # I prefer to separate the words with hyphens
  binary "macos-#{arch}-ollamamodelupdate", target: "ollama-model-update"
  # Link in one with both hyphens and the r
  binary "macos-#{arch}-ollamamodelupdate", target: "ollama-model-updater"
end
