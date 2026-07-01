cask "byword-editor" do
  version "1.0.1"
  sha256 "d7ab69d92ea0abb98ea34592283bc8e0009ec82e54f8633b3d59244d7d66f0ad"

  url "https://github.com/laboritdev/byword-editor/releases/download/v1.0.1/BywordEditor-1.0.1-macos-arm64.zip"
  name "BywordEditor"
  desc "Minimalist Markdown editor for macOS"
  homepage "https://github.com/laboritdev/byword-editor"

  depends_on macos: :sonoma

  app "BywordEditor.app"

  zap trash: [
    "~/Library/Application Support/BywordEditor",
    "~/Library/Preferences/com.bywordeditor.app.plist",
  ]
end
