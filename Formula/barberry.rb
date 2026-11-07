# typed: strict
# frozen_string_literal: true

# Written by server/scripts/cli-formula.sh in the release of barberry 0.19.0; a release replaces it.
class Barberry < Formula
  desc "Catalog, tasting notes and exports of Barberry Garden, from the command-line"
  homepage "https://barberry.io"

  on_macos do
    on_arm do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.19.0/barberry-0.19.0-aarch64-apple-darwin.tar.gz"
      sha256 "0d5066517622a886df1d021495d5e4c95a74a1d977b228514eb5fccec79e6f2d"
    end
    on_intel do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.19.0/barberry-0.19.0-x86_64-apple-darwin.tar.gz"
      sha256 "93e29148c2c985eebe612f1956c78c04d12db73782a6374485ea9aadf8010928"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.19.0/barberry-0.19.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "afeadb519dae0f20b5b01d35067d2ed174ab973fbcf534be6486652c7c4812f5"
    end
    on_intel do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.19.0/barberry-0.19.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a8497f060f9b430b98109585c7569f295803b3c6afb455e91f06e66b3e810a81"
    end
  end

  def install
    bin.install "barberry"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/barberry --version")
  end
end
