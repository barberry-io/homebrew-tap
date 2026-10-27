# typed: strict
# frozen_string_literal: true

# Written by server/scripts/cli-formula.sh in the release of barberry 0.11.0; a release replaces it.
class Barberry < Formula
  desc "Catalog, tasting notes and exports of Barberry Garden, from the command-line"
  homepage "https://barberry.io"

  on_macos do
    on_arm do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.11.0/barberry-0.11.0-aarch64-apple-darwin.tar.gz"
      sha256 "ec6ba1092439ba88719e63ffca5ef313aeb95cc1510edf7994e0379c6fa5f1e3"
    end
    on_intel do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.11.0/barberry-0.11.0-x86_64-apple-darwin.tar.gz"
      sha256 "e3839b6fba10463b88f18259a785cae8127dfff8c43ea44c383c4da3d0d8a5d4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.11.0/barberry-0.11.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "952357eec45d3fd6a9e058758b02391db5bceb08db1bffd7931e577dd3dbdce9"
    end
    on_intel do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.11.0/barberry-0.11.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "eda6563175cff925109bc03380cfef456df2873f1afd8b6abf10d598e255123c"
    end
  end

  def install
    bin.install "barberry"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/barberry --version")
  end
end
