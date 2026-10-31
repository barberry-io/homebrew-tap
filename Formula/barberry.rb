# typed: strict
# frozen_string_literal: true

# Written by server/scripts/cli-formula.sh in the release of barberry 0.16.0; a release replaces it.
class Barberry < Formula
  desc "Catalog, tasting notes and exports of Barberry Garden, from the command-line"
  homepage "https://barberry.io"

  on_macos do
    on_arm do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.16.0/barberry-0.16.0-aarch64-apple-darwin.tar.gz"
      sha256 "3e4e221f7575f0f9a4c4ab119245d6d2929766d2f89664d9a68654c4c95d68a6"
    end
    on_intel do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.16.0/barberry-0.16.0-x86_64-apple-darwin.tar.gz"
      sha256 "d60a346b5fd0846d7d7f3936aac8e2df42646c8ca519351f834d9bbec16e9625"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.16.0/barberry-0.16.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e648953540849c2a09ddba6259a29eb0927e9d91a67779545edf75d9a69949ff"
    end
    on_intel do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.16.0/barberry-0.16.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "89b25e29e5e7531272eca249da2d213ce1cee8ad236f87c70723ceaf58160d39"
    end
  end

  def install
    bin.install "barberry"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/barberry --version")
  end
end
