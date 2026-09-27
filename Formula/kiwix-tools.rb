class KiwixTools < Formula
  desc "Command-line Kiwix tools, including kiwix-serve"
  homepage "https://github.com/kiwix/kiwix-tools"
  url "https://download.kiwix.org/release/kiwix-tools/kiwix-tools_macos-arm64-3.8.2.tar.gz"
  sha256 "5c64d43176627e558a117146b02ea36b7da2b0cd3a332cbff075cde05d9585f9"
  license "GPL-3.0-or-later"

  def install
    bin.install "kiwix-serve", "kiwix-search", "kiwix-manage"
  end
end
