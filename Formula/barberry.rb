# typed: strict
# frozen_string_literal: true

# Written by server/scripts/cli-formula.sh in the release of barberry 0.12.0; a release replaces it.
class Barberry < Formula
  desc "Catalog, tasting notes and exports of Barberry Garden, from the command-line"
  homepage "https://barberry.io"

  on_macos do
    on_arm do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.12.0/barberry-0.12.0-aarch64-apple-darwin.tar.gz"
      sha256 "a29351fdf0f0f66da30ae694107be33ad5ab9a76b47d308c245be737281f1fdb"
    end
    on_intel do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.12.0/barberry-0.12.0-x86_64-apple-darwin.tar.gz"
      sha256 "b8837ee0d3bb167265b001e8212c8b09e422867855a5c5fbb12f4cb8c648c0f6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.12.0/barberry-0.12.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c3041decd7ec4778bc11f55ea4e1b5c2b05c691162fc42b9cf26155e7bc36b4a"
    end
    on_intel do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.12.0/barberry-0.12.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "48c7bb0e229c12477c4fc4f47b86824aaa89d8b812047d2697b9adb47e4ed268"
    end
  end

  def install
    bin.install "barberry"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/barberry --version")
  end
end
