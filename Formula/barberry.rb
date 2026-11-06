# typed: strict
# frozen_string_literal: true

# Written by server/scripts/cli-formula.sh in the release of barberry 0.18.0; a release replaces it.
class Barberry < Formula
  desc "Catalog, tasting notes and exports of Barberry Garden, from the command-line"
  homepage "https://barberry.io"

  on_macos do
    on_arm do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.18.0/barberry-0.18.0-aarch64-apple-darwin.tar.gz"
      sha256 "713b4468a439dfd8d68cc1e7b22033fda74412d0d32375ec212b0998911d9e3a"
    end
    on_intel do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.18.0/barberry-0.18.0-x86_64-apple-darwin.tar.gz"
      sha256 "59585d9bfc3e2b91f5ed34aeea981e86709d1c0d977507e730464bcb01a750f7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.18.0/barberry-0.18.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "888b1bd4c5567be1ac54094d57250d1eec5fd6b62c7be38075c4258875c793bf"
    end
    on_intel do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.18.0/barberry-0.18.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bca71b01e770407e04117dc66700f5d053101c7bc38385cca5c57fd2792d327c"
    end
  end

  def install
    bin.install "barberry"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/barberry --version")
  end
end
