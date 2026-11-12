# typed: strict
# frozen_string_literal: true

# Written by server/scripts/cli-formula.sh in the release of barberry 0.24.0; a release replaces it.
class Barberry < Formula
  desc "Catalog, tasting notes and exports of Barberry Garden, from the command-line"
  homepage "https://barberry.io"

  on_macos do
    on_arm do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.24.0/barberry-0.24.0-aarch64-apple-darwin.tar.gz"
      sha256 "864462095cb67546eded02a7451f522e47d1a7d02a99292cb8e1f982dc485b6e"
    end
    on_intel do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.24.0/barberry-0.24.0-x86_64-apple-darwin.tar.gz"
      sha256 "88e3657d8188b27233474c39008e565d46576efe41807328e7df7c4ac3f02b3a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.24.0/barberry-0.24.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0cfb7333abb25f68de1d5ad1b87329fc6ee4c12e2fc05956371fbb11523de103"
    end
    on_intel do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.24.0/barberry-0.24.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e27d7f32445813b93f4b94e4813b12b96bb3f3c74d1986b973f178da31a30344"
    end
  end

  def install
    bin.install "barberry"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/barberry --version")
  end
end
