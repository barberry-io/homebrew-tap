# typed: strict
# frozen_string_literal: true

# Written by server/scripts/cli-formula.sh in the release of barberry 0.8.0; a release replaces it.
class Barberry < Formula
  desc "Catalog, tasting notes and exports of Barberry Garden, from the command-line"
  homepage "https://barberry.io"

  on_macos do
    on_arm do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.8.0/barberry-0.8.0-aarch64-apple-darwin.tar.gz"
      sha256 "9e197c9de6f20e43eb822887ef63366f8d177b9269bf3ddaab76f749bf1bbcef"
    end
    on_intel do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.8.0/barberry-0.8.0-x86_64-apple-darwin.tar.gz"
      sha256 "312e1c55f8666df047cae29c008d02c87212cc93ad895d6ef2937c9344322e05"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.8.0/barberry-0.8.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "369717348f8c4cad01465c2b3bb1060993ab04158b87a4fbf0a531f21a93e01d"
    end
    on_intel do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.8.0/barberry-0.8.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "56beda0a053a9397f476b8eab8d7ab523d0f51205b03c9867ab700770eacf00c"
    end
  end

  def install
    bin.install "barberry"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/barberry --version")
  end
end
