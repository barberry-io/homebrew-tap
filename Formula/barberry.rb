# typed: strict
# frozen_string_literal: true

# Written by server/scripts/cli-formula.sh in the release of barberry 0.5.0; a release replaces it.
class Barberry < Formula
  desc "Catalog, tasting notes and exports of Barberry Garden, from the command-line"
  homepage "https://barberry.io"

  on_macos do
    on_arm do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.5.0/barberry-0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "1afb241050848a00305edac1fa87d120a33dffbf17734bc3070f604bdd828779"
    end
    on_intel do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.5.0/barberry-0.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "25c294c2cdb12349df5b45197444741fb64c033e2f8c90f67c02f7ccac755ed3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.5.0/barberry-0.5.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6d1cb50e491eabdef1d31072b4c59a53f28a087c7043809619a3fad4f89917d9"
    end
    on_intel do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.5.0/barberry-0.5.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fea2312da9099c8d2555a28feb4c9cc5f7206b647191089bfb36655fd3c91b58"
    end
  end

  def install
    bin.install "barberry"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/barberry --version")
  end
end
