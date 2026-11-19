# typed: strict
# frozen_string_literal: true

# Written by server/scripts/cli-formula.sh in the release of barberry 0.26.0; a release replaces it.
class Barberry < Formula
  desc "Catalog, tasting notes and exports of Barberry Garden, from the command-line"
  homepage "https://barberry.io"

  on_macos do
    on_arm do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.26.0/barberry-0.26.0-aarch64-apple-darwin.tar.gz"
      sha256 "ce64df78b2fafbc1028997ef028174a656fccebc61c44018f4552b74f740d38b"
    end
    on_intel do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.26.0/barberry-0.26.0-x86_64-apple-darwin.tar.gz"
      sha256 "caa760222840c1e155b0ef385755473eb082d6b4883fcd40e1adf1f6820b73fc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.26.0/barberry-0.26.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b9d59371134e571ab6c3652fe9f40f5e71788675b1bd6ff695ffdce29f1997cf"
    end
    on_intel do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.26.0/barberry-0.26.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "48752aa03eaab88d91c733d4cc496faf13695b2ef46704c492e4f8a6acff5f94"
    end
  end

  def install
    bin.install "barberry"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/barberry --version")
  end
end
