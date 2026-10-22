# typed: strict
# frozen_string_literal: true

# Written by server/scripts/cli-formula.sh in the release of barberry 0.8.1; a release replaces it.
class Barberry < Formula
  desc "Catalog, tasting notes and exports of Barberry Garden, from the command-line"
  homepage "https://barberry.io"

  on_macos do
    on_arm do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.8.1/barberry-0.8.1-aarch64-apple-darwin.tar.gz"
      sha256 "85de471c3402dcb30397d00f4f5b64ec45b34d4801448329a8fd453fd8f9107d"
    end
    on_intel do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.8.1/barberry-0.8.1-x86_64-apple-darwin.tar.gz"
      sha256 "e7616d73a8797959fc1d1d7edccfae637c3a18e95951f1f527f1f6826e37514e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.8.1/barberry-0.8.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f30263d867275bbf80cb017b25de36884ac6a622f85b582d08db6dcd9819bfb0"
    end
    on_intel do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.8.1/barberry-0.8.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cf69dbfd56f2dc32bc2baa2e35375c6eff4a5e66c30d4990b4e88b1ebad35450"
    end
  end

  def install
    bin.install "barberry"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/barberry --version")
  end
end
