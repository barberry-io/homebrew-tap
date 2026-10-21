# typed: strict
# frozen_string_literal: true

# Written by server/scripts/cli-formula.sh in the release of barberry 0.6.0; a release replaces it.
class Barberry < Formula
  desc "Catalog, tasting notes and exports of Barberry Garden, from the command-line"
  homepage "https://barberry.io"

  on_macos do
    on_arm do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.6.0/barberry-0.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "06c1c915ff24e51a535cfd139daa3d8a01dc153a9460c5c3b2233951e50cabb2"
    end
    on_intel do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.6.0/barberry-0.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "10575e2155c75c8c443de22a1ef4375e080f0c4807fa727120560391542054e7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.6.0/barberry-0.6.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "881e8253d465e22f7a02fa55fb91d74e1a7f8756b7dbac8746a9dabdff7181bf"
    end
    on_intel do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.6.0/barberry-0.6.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a22ef38fec253a661c28492b98dc240f4afa170d4841c4a57c10e17c275b1c27"
    end
  end

  def install
    bin.install "barberry"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/barberry --version")
  end
end
