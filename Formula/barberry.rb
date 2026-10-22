# typed: strict
# frozen_string_literal: true

# Written by server/scripts/cli-formula.sh in the release of barberry 0.7.1; a release replaces it.
class Barberry < Formula
  desc "Catalog, tasting notes and exports of Barberry Garden, from the command-line"
  homepage "https://barberry.io"

  on_macos do
    on_arm do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.7.1/barberry-0.7.1-aarch64-apple-darwin.tar.gz"
      sha256 "3cf82f172f2ae203f50393c58a573f40f56cf9e4460376a2d3ffca414b1f35da"
    end
    on_intel do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.7.1/barberry-0.7.1-x86_64-apple-darwin.tar.gz"
      sha256 "2401436cbe1381e51d42741148b4af6caabc3f7b23c99090639f9a6d2ed6bc89"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.7.1/barberry-0.7.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "cde8f1dca0b92287172b0bd19d1a5718ac702c9e3dd31c129b14b734cefeb85c"
    end
    on_intel do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.7.1/barberry-0.7.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b6d7163d0950eabdc3e971636c7e160e7849d82356382b0b1e3f9022406f70d6"
    end
  end

  def install
    bin.install "barberry"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/barberry --version")
  end
end
