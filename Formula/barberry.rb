# typed: strict
# frozen_string_literal: true

# Written by server/scripts/cli-formula.sh in the release of barberry 0.20.0; a release replaces it.
class Barberry < Formula
  desc "Catalog, tasting notes and exports of Barberry Garden, from the command-line"
  homepage "https://barberry.io"

  on_macos do
    on_arm do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.20.0/barberry-0.20.0-aarch64-apple-darwin.tar.gz"
      sha256 "1b046369d5ea17690607b27c13a9c9b9a8d39c8bf5df1df104ef074938292dab"
    end
    on_intel do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.20.0/barberry-0.20.0-x86_64-apple-darwin.tar.gz"
      sha256 "49925942d23eb3b4eac324f0c3df0e4d502fb5ff0aade84cad731dabf428a7a5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.20.0/barberry-0.20.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "950b299e97d2feaa7d3ec38ea40f676c020941cc50c00fcad7ad0d6fa1cbbc5e"
    end
    on_intel do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.20.0/barberry-0.20.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "23f9e962e5aea17f23ff58ea5121b88efe939af675b551ef2f68ae514027d3c3"
    end
  end

  def install
    bin.install "barberry"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/barberry --version")
  end
end
