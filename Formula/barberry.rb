# typed: strict
# frozen_string_literal: true

# Written by server/scripts/cli-formula.sh in the release of barberry 0.9.0; a release replaces it.
class Barberry < Formula
  desc "Catalog, tasting notes and exports of Barberry Garden, from the command-line"
  homepage "https://barberry.io"

  on_macos do
    on_arm do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.9.0/barberry-0.9.0-aarch64-apple-darwin.tar.gz"
      sha256 "fd2b67d44e02ad6a0adcff02a17a13bb7722d32d239fe7bb87fc96d2b22e5d0f"
    end
    on_intel do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.9.0/barberry-0.9.0-x86_64-apple-darwin.tar.gz"
      sha256 "7472d8b1d898042990793c1477bd672eb3dad4202a56f6f3ea1a98ae853ac2b6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.9.0/barberry-0.9.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "dace72241677cd92af4ed704bbf7e35a8b18bc3c99837818909606213af7b266"
    end
    on_intel do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.9.0/barberry-0.9.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2e16360b10ccd71210a89ced6b2e2a0d9b3a2894b2b5921c9f672ce4fd7e768b"
    end
  end

  def install
    bin.install "barberry"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/barberry --version")
  end
end
