# typed: strict
# frozen_string_literal: true

# Written by server/scripts/cli-formula.sh in the release of barberry 0.1.0; a release replaces it.
class Barberry < Formula
  desc "Catalog, tasting notes and exports of Barberry Garden, from the command-line"
  homepage "https://barberry.io"

  on_macos do
    on_arm do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.1.0/barberry-0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "519a2187c72fd8b7cf7b05674a9ad4cf3a8f1155fffba8943c8ee7201c1b2e88"
    end
    on_intel do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.1.0/barberry-0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "27ff853a88ec6ef5bab3c8df922b655d2fcfea4bb9ab648a776384e3b9cf9d17"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.1.0/barberry-0.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7aa56723a072aa5199e6e981a2798e72cd2e219464c76a4cb8d9edc8d96cd328"
    end
    on_intel do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.1.0/barberry-0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "491b7e98ca26ed4be2222ab68f9fc323add7cb8e3d57b9f66d7b4ab05eca1020"
    end
  end

  def install
    bin.install "barberry"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/barberry --version")
  end
end
