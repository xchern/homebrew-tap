class Symphony < Formula
  desc "Run coding agents autonomously from project work"
  homepage "https://github.com/openai/symphony"
  license "Apache-2.0"

  depends_on "git"

  on_macos do
    on_arm do
      url "https://github.com/openai/symphony/releases/download/v0.0.3/symphony-v0.0.3-macos_arm64"
      sha256 "b85d78b25cd5cacff92424416f6a3af7cafee5d675f56b5cd26d22d601c2026d"
    end
    on_intel do
      url "https://github.com/openai/symphony/releases/download/v0.0.3/symphony-v0.0.3-macos_x86_64"
      sha256 "e7db24d8b35d99a96b96db51e50c7974ab9a8ae06fd05abf6d03ead6bf183d90"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/openai/symphony/releases/download/v0.0.3/symphony-v0.0.3-linux_arm64"
      sha256 "bf204639b836d378f5d2ddb389f5d76602a62e9d1b115bdbefb07916848ae066"
    end
    on_intel do
      url "https://github.com/openai/symphony/releases/download/v0.0.3/symphony-v0.0.3-linux_x86_64"
      sha256 "ea35a04a54a6d37c0cafe3f195da871e47614a8c05765b90dbb4cac32e1435ee"
    end
  end

  def install
    bin.install Dir["symphony-v#{version}-*"].first => "symphony"
  end

  def caveats
    <<~EOS
      Install the Codex CLI and configure your tracker credentials before running Symphony.
      Start it with: symphony /path/to/WORKFLOW.md
    EOS
  end

  test do
    ENV["SYMPHONY_INSTALL_DIR"] = testpath/"runtime"
    assert_match "Usage: symphony", shell_output("#{bin}/symphony --help 2>&1", 1)
  end
end
