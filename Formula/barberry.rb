# typed: strict
# frozen_string_literal: true

# Written by server/scripts/cli-formula.sh in the release of barberry 0.2.0; a release replaces it.
class Barberry < Formula
  desc "Catalog, tasting notes and exports of Barberry Garden, from the command-line"
  homepage "https://barberry.io"

  on_macos do
    on_arm do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.2.0/barberry-0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "106c1fd0fd1e5284215d7054c30fd1cb13214c959e8fe77cb27ac944436f35e6"
    end
    on_intel do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.2.0/barberry-0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "1094269149d43361cadbbfbb46e56e5ec19e4a36c79ce83b55ce009e93186a4b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.2.0/barberry-0.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f11eeb1e4294412ba43a6cbb0c604ee9eaa794633475732aa6d77ffdb57db6db"
    end
    on_intel do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.2.0/barberry-0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "728592a2d5e0f5bc8f2311c6101f645893df9722e69ef76383a5d0d52e3bf1b9"
    end
  end

  def install
    bin.install "barberry"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/barberry --version")
  end
end
