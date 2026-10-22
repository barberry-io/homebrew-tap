# typed: strict
# frozen_string_literal: true

# Written by server/scripts/cli-formula.sh in the release of barberry 0.6.1; a release replaces it.
class Barberry < Formula
  desc "Catalog, tasting notes and exports of Barberry Garden, from the command-line"
  homepage "https://barberry.io"

  on_macos do
    on_arm do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.6.1/barberry-0.6.1-aarch64-apple-darwin.tar.gz"
      sha256 "1cfc09941233d12a37737ffa2c72177c40115e63b2be256f90d2af647e81c918"
    end
    on_intel do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.6.1/barberry-0.6.1-x86_64-apple-darwin.tar.gz"
      sha256 "4e13f63b93d0fcdd98bba58e787ff445bd103f36cecce68f513f75c50d7b5481"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.6.1/barberry-0.6.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1afbe4338b25249b92ab86fd1063c9c5563bcff79fa4572bdd1a8bed63a62cc6"
    end
    on_intel do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.6.1/barberry-0.6.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b6799dda0fbec2f6af872504eda417e844ae28ad69041797cdb2026ab36cf0f1"
    end
  end

  def install
    bin.install "barberry"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/barberry --version")
  end
end
