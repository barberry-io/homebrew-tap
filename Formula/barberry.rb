# typed: strict
# frozen_string_literal: true

# Written by server/scripts/cli-formula.sh in the release of barberry 0.3.2; a release replaces it.
class Barberry < Formula
  desc "Catalog, tasting notes and exports of Barberry Garden, from the command-line"
  homepage "https://barberry.io"

  on_macos do
    on_arm do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.3.2/barberry-0.3.2-aarch64-apple-darwin.tar.gz"
      sha256 "707ee19cbe295016e19ebd0ac98e916275c86fa176bf1ea381fade771d2c6eaa"
    end
    on_intel do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.3.2/barberry-0.3.2-x86_64-apple-darwin.tar.gz"
      sha256 "5069e0b21e28ab4bf3270aff73eb180358a9af268a13d18a4d8278a2a85d915a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.3.2/barberry-0.3.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bdc8d1888a39e8cb15aec36151d3f852b9b3551b5619d98d64c41782b6f99ed0"
    end
    on_intel do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.3.2/barberry-0.3.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c4b576fad3ad4e321985602a28b70cb1928eb4dac2e18ee7effebf188581abad"
    end
  end

  def install
    bin.install "barberry"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/barberry --version")
  end
end
