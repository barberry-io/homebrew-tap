# typed: strict
# frozen_string_literal: true

# Written by server/scripts/cli-formula.sh in the release of barberry 0.14.1; a release replaces it.
class Barberry < Formula
  desc "Catalog, tasting notes and exports of Barberry Garden, from the command-line"
  homepage "https://barberry.io"

  on_macos do
    on_arm do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.14.1/barberry-0.14.1-aarch64-apple-darwin.tar.gz"
      sha256 "21d10b615723d780ef0bc603611d54ac443e9b28a6dc08e497fb058f32739a4f"
    end
    on_intel do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.14.1/barberry-0.14.1-x86_64-apple-darwin.tar.gz"
      sha256 "b2d49f054f861319c66bee541993a2e38710a7fbdc27bb5240ba20c0c5907a39"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.14.1/barberry-0.14.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7194a21cc9dfc25c6ad753d60513f3468d31055f89ca34f4514f6166bab44dd5"
    end
    on_intel do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.14.1/barberry-0.14.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d62fb6663c1d2c21699fa8e09cfe595cbfd98b4b6da6d29b24f683dbf8fabbe1"
    end
  end

  def install
    bin.install "barberry"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/barberry --version")
  end
end
