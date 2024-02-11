cask "ollama-model-updater" do
    arch arm: "arm64", intel: "x86"
    
    version "0.1.7"
    sha256  arm:    "104a318305e5ac2d1a6c06760d216d8ca9ae43aaab89d719d2b266f3bd0885bf",
            intel:  "4d38c5c35a81578285e05d13d32de2a25126a4718ec05569299f96be15320d23"

    url "https://github.com/technovangelist/ollamamodelupdater/releases/download/v#{version}/macos-#{arch}-ollamamodelupdate"

    name "Ollama Model Updater"
    desc "Looks at all Ollama models on the system and pulls the mode if updated on ollama.ai"
    homepage "https://github.com/technovangelist/ollamamodelupdater"

    livecheck do
        url :homepage
        regex(/^v?(\d+(?:\.\d+)+)$/i)
    end

    binary "macos-#{arch}-ollamamodelupdate", target: "ollamamodelupdate"
end