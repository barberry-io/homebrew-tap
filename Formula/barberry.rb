# typed: strict
# frozen_string_literal: true

# Written by server/scripts/cli-formula.sh in the release of barberry 0.14.0; a release replaces it.
class Barberry < Formula
  desc "Catalog, tasting notes and exports of Barberry Garden, from the command-line"
  homepage "https://barberry.io"

  on_macos do
    on_arm do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.14.0/barberry-0.14.0-aarch64-apple-darwin.tar.gz"
      sha256 "6015059e5bee6cb4a4554d948b892a795fdddce157235caa85d9230f706ca137"
    end
    on_intel do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.14.0/barberry-0.14.0-x86_64-apple-darwin.tar.gz"
      sha256 "8c475a1f7cafe6c6a6ba517d0581e1bf48dbc78ad3832efea57c8cc06b75d240"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.14.0/barberry-0.14.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e064d668c4dff70f66759177b2f1cb5fc810ef7e455337edd2fb1cad578b1fcb"
    end
    on_intel do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.14.0/barberry-0.14.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "99fb177081db85acbea6dede00eb0d806d25fbea1aaf42207809d11af7108a2e"
    end
  end

  def install
    bin.install "barberry"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/barberry --version")
  end
end
