# typed: strict
# frozen_string_literal: true

# Written by server/scripts/cli-formula.sh in the release of barberry 0.15.0; a release replaces it.
class Barberry < Formula
  desc "Catalog, tasting notes and exports of Barberry Garden, from the command-line"
  homepage "https://barberry.io"

  on_macos do
    on_arm do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.15.0/barberry-0.15.0-aarch64-apple-darwin.tar.gz"
      sha256 "9e6c04b248dc2a02c60667bf2a805a6f3d88f1868c5abc3f2ce9354cd32af4a9"
    end
    on_intel do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.15.0/barberry-0.15.0-x86_64-apple-darwin.tar.gz"
      sha256 "d3fd9c97f5afc8bd35d9b7c6be9a5defb0c4131a076c5c72bd9d106f7ffa03f9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.15.0/barberry-0.15.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4c4c00cf03bc4d1d165ef5dec04feb365b4f79badc7a541e7ffe18a977773b41"
    end
    on_intel do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.15.0/barberry-0.15.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "36294b24d77c18c4402e6cf611836efa77c1a8743c3bb42a2e5fbd513f1b27d9"
    end
  end

  def install
    bin.install "barberry"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/barberry --version")
  end
end
