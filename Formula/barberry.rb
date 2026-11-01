# typed: strict
# frozen_string_literal: true

# Written by server/scripts/cli-formula.sh in the release of barberry 0.17.0; a release replaces it.
class Barberry < Formula
  desc "Catalog, tasting notes and exports of Barberry Garden, from the command-line"
  homepage "https://barberry.io"

  on_macos do
    on_arm do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.17.0/barberry-0.17.0-aarch64-apple-darwin.tar.gz"
      sha256 "b5f96e4de3d2b28b48277d8957e349c4230289036411f541289bbe078887e3a6"
    end
    on_intel do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.17.0/barberry-0.17.0-x86_64-apple-darwin.tar.gz"
      sha256 "44bc802741b4be899e59d31ff0c862b67938630e81f5ac112a69c8a5e4ff28e1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.17.0/barberry-0.17.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8e8ea02ce72e50ae22425aa0e9fa2e4bc1be2f318b1a2954b3331345cf869833"
    end
    on_intel do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.17.0/barberry-0.17.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7adee4c63584f592ffdbe72684f1ec119161c70b7b1474bf5933579499880aed"
    end
  end

  def install
    bin.install "barberry"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/barberry --version")
  end
end
