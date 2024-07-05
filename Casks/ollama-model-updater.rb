cask 'ollama-model-updater' do
  arch arm: 'arm64', intel: 'x86'

  version '0.1.7'
  sha256  arm: '04a318305e5ac2d1a6c06760d216d8ca9ae43aaab89d719d2b266f3bd0885bf',
          intel: '4d38c5c35a81578285e05d13d32de2a25126a4718ec05569299f96be15320d23'

  url "https://github.com/technovangelist/ollamamodelupdater/releases/download/v#{version}/macos-#{arch}-ollamamodelupdate"
  name 'Ollama Model Updater'
  desc 'Updates models on the system if updated on ollama.com'
  homepage 'https://github.com/technovangelist/ollamamodelupdater'

  livecheck do
    url :homepage
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  # The original maintainer uses ollamamodelupdate (no r)
  binary "macos-#{arch}-ollamamodelupdate", target: 'ollamamodelupdate'
  # For consistency with the repository name, let's link in with the r as well.
  binary "macos-#{arch}-ollamamodelupdate", target: 'ollamamodelupdater'
  # I prefer to separate the words with hyphens
  binary "macos-#{arch}-ollamamodelupdate", target: 'ollama-model-update'
  # Link in one with both hyphens and the r
  binary "macos-#{arch}-ollamamodelupdate", target: 'ollama-model-updater'
end
