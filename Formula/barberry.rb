# typed: strict
# frozen_string_literal: true

# Written by server/scripts/cli-formula.sh in the release of barberry 0.6.2; a release replaces it.
class Barberry < Formula
  desc "Catalog, tasting notes and exports of Barberry Garden, from the command-line"
  homepage "https://barberry.io"

  on_macos do
    on_arm do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.6.2/barberry-0.6.2-aarch64-apple-darwin.tar.gz"
      sha256 "1a69a5e4d049885226b9f318a5f8d3e6cc04e515a9456e0dc22a641b5ffe52e7"
    end
    on_intel do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.6.2/barberry-0.6.2-x86_64-apple-darwin.tar.gz"
      sha256 "e1f3fdae14700ef7963c0d8afe848f8d8685131bf79d5db2031f9e402d6f23ae"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.6.2/barberry-0.6.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4ee342fc3115682800a293d6e52a2649b2f3ba5583d596f3c76489bd973f51c4"
    end
    on_intel do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.6.2/barberry-0.6.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0e03b410538bd01909611456b56c23fee4024819a9f16ebcb7fdb83ebfb36c07"
    end
  end

  def install
    bin.install "barberry"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/barberry --version")
  end
end
