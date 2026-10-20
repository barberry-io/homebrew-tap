# typed: strict
# frozen_string_literal: true

# Written by server/scripts/cli-formula.sh in the release of barberry 0.3.0; a release replaces it.
class Barberry < Formula
  desc "Catalog, tasting notes and exports of Barberry Garden, from the command-line"
  homepage "https://barberry.io"

  on_macos do
    on_arm do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.3.0/barberry-0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "186bb5625d68b3a3e32191f4208f02cef03fef999671e8a7c90a19bf04b5a0e0"
    end
    on_intel do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.3.0/barberry-0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "01ad026109b28a9e795751c82336495a35f690e2f75e078e074e3a803fbf9327"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.3.0/barberry-0.3.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2b586b6c8281fb8676653327b998ce6aa6140779f23280025ddda3f3990b8357"
    end
    on_intel do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.3.0/barberry-0.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7c18800f557526ff5ed2595b903aa76f9f372388a234174ee9bc55d72c1b1d82"
    end
  end

  def install
    bin.install "barberry"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/barberry --version")
  end
end
