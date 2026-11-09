# typed: strict
# frozen_string_literal: true

# Written by server/scripts/cli-formula.sh in the release of barberry 0.22.0; a release replaces it.
class Barberry < Formula
  desc "Catalog, tasting notes and exports of Barberry Garden, from the command-line"
  homepage "https://barberry.io"

  on_macos do
    on_arm do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.22.0/barberry-0.22.0-aarch64-apple-darwin.tar.gz"
      sha256 "86cf04b412176eb38ebaca0c6d7017d5a7d534c25e56714f6759a40156135d52"
    end
    on_intel do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.22.0/barberry-0.22.0-x86_64-apple-darwin.tar.gz"
      sha256 "bd5f6f0d86fc283f51067c284a8947ffe4a62abb235cc4abab8a95f95e29e035"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.22.0/barberry-0.22.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e3c127ae099f23fd36d3dbb3bde981600bd8eba3289fb58babc76a6df052a862"
    end
    on_intel do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.22.0/barberry-0.22.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5e09bb8b293eb43a3a274cf9798dc2b0386c5c8a9ddf4f3801c9afee4a84a9f2"
    end
  end

  def install
    bin.install "barberry"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/barberry --version")
  end
end
