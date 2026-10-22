# typed: strict
# frozen_string_literal: true

# Written by server/scripts/cli-formula.sh in the release of barberry 0.7.0; a release replaces it.
class Barberry < Formula
  desc "Catalog, tasting notes and exports of Barberry Garden, from the command-line"
  homepage "https://barberry.io"

  on_macos do
    on_arm do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.7.0/barberry-0.7.0-aarch64-apple-darwin.tar.gz"
      sha256 "a69e2069ed4c7c25edb1f10bf7a4f83cb7fb8e4759bca2bb1e2d8593d6e990e6"
    end
    on_intel do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.7.0/barberry-0.7.0-x86_64-apple-darwin.tar.gz"
      sha256 "6f0e2a45ab5d9afb763ce35ec1fc919c8d5ef5fae7d7c9defb21daa71ab82fd9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.7.0/barberry-0.7.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ac068c912fb8bfc6cf5437de82b2183c0728c47215c532375a1f55208440336f"
    end
    on_intel do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.7.0/barberry-0.7.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "940155a3e246c9e5b60eacff2e872d9b7b2d9e807f64ce7fe9a3ac1fbc8c7ffd"
    end
  end

  def install
    bin.install "barberry"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/barberry --version")
  end
end
