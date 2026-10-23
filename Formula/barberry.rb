# typed: strict
# frozen_string_literal: true

# Written by server/scripts/cli-formula.sh in the release of barberry 0.10.0; a release replaces it.
class Barberry < Formula
  desc "Catalog, tasting notes and exports of Barberry Garden, from the command-line"
  homepage "https://barberry.io"

  on_macos do
    on_arm do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.10.0/barberry-0.10.0-aarch64-apple-darwin.tar.gz"
      sha256 "0cef42de4f74847082f02609a99e7d07bb049425cc29bcd19bb77cddcf3212e4"
    end
    on_intel do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.10.0/barberry-0.10.0-x86_64-apple-darwin.tar.gz"
      sha256 "a9fd27089db91c91923eaf0499a97f12834231ca0e3f1c2dcbe86ec766002c14"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.10.0/barberry-0.10.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b4483983b261a62021e925965830ebcaa272d5551afc5bcde723ecb6d4460499"
    end
    on_intel do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.10.0/barberry-0.10.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3e8c873642699efe2dd99672642db09ff6cce2ba5a09526faa0e5827656f3948"
    end
  end

  def install
    bin.install "barberry"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/barberry --version")
  end
end
