# typed: strict
# frozen_string_literal: true

# Written by server/scripts/cli-formula.sh in the release of barberry 0.13.0; a release replaces it.
class Barberry < Formula
  desc "Catalog, tasting notes and exports of Barberry Garden, from the command-line"
  homepage "https://barberry.io"

  on_macos do
    on_arm do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.13.0/barberry-0.13.0-aarch64-apple-darwin.tar.gz"
      sha256 "dbdb12ee4d2adc915de47b2168a44cfa295079c0a379df9679fa9586dce6d10e"
    end
    on_intel do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.13.0/barberry-0.13.0-x86_64-apple-darwin.tar.gz"
      sha256 "0fd336168851c7908d10472eb87fe05873f568c2aeb80c3b6d4c16a4eaba502d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.13.0/barberry-0.13.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0e9c07741eb99e053dd9b51e998493346ceeb4b78fbce565a825af2086e27900"
    end
    on_intel do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.13.0/barberry-0.13.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d2352fcfb1540888afb9eb615bab23ea6ad9a7c0277ca8e917be66b9c766de6f"
    end
  end

  def install
    bin.install "barberry"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/barberry --version")
  end
end
