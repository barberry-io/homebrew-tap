# typed: strict
# frozen_string_literal: true

# Written by server/scripts/cli-formula.sh in the release of barberry 0.23.0; a release replaces it.
class Barberry < Formula
  desc "Catalog, tasting notes and exports of Barberry Garden, from the command-line"
  homepage "https://barberry.io"

  on_macos do
    on_arm do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.23.0/barberry-0.23.0-aarch64-apple-darwin.tar.gz"
      sha256 "67eef7d42658409f31a7ec92a9605e5b8c1e67664d0dfe780c27b58b7f894525"
    end
    on_intel do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.23.0/barberry-0.23.0-x86_64-apple-darwin.tar.gz"
      sha256 "de7d747f95e5a9290edb8448cc62a2c526b2e23ddb908a7db98a17da33c1dc4b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.23.0/barberry-0.23.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e588079ab4ce8689220bc30ebf71ee9a473d093cb5160a2ba63315ec94832854"
    end
    on_intel do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.23.0/barberry-0.23.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0c56710dd0e0a2f52ce6f52b8244d3fd0f2666b48bc6f836365ce222ba646eed"
    end
  end

  def install
    bin.install "barberry"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/barberry --version")
  end
end
