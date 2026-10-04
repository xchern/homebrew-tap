class AudioCpp < Formula
  desc "Local audio model inference with a native C++ runtime"
  homepage "https://github.com/0xShug0/audio.cpp"
  url "https://github.com/0xShug0/audio.cpp/releases/download/v0.9.0/audio-v0.9.0-bin-macos-arm64-metal.tar.gz"
  sha256 "7cea9219d5f06475011c5d225d71d988cecef633ff7d098ee8a4c7b08583b1b4"
  license "Apache-2.0"

  depends_on arch: :arm64
  depends_on macos: :ventura

  def install
    libexec.install "audiocpp_cli", "audiocpp_server", "audiocpp_gguf", "model_specs", "tools"
    %w[audiocpp_cli audiocpp_server audiocpp_gguf].each do |executable|
      (libexec/executable).chmod 0755
      bin.write_exec_script libexec/executable
    end
  end

  def caveats
    <<~EOS
      Model weights must be downloaded separately.
      Start the embedded WebUI with: audiocpp_server --ui --backend metal
      Open http://127.0.0.1:8080 in your browser.
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/audiocpp_cli --version")
    assert_match "--backend", shell_output("#{bin}/audiocpp_server --help")
    assert_match "--inspect", shell_output("#{bin}/audiocpp_gguf --help")
  end
end
